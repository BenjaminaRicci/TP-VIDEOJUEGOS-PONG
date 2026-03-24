extends CharacterBody2D

var velocidad = 500

func _physics_process(delta):
	velocity.y=0

	if Input.is_key_pressed(KEY_W):
		velocity.y=-velocidad
	elif Input.is_key_pressed(KEY_S):
		velocity.y=velocidad

	move_and_collide(velocity * delta)
	
