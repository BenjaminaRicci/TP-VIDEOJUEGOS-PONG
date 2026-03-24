extends CharacterBody2D

var velocidad = 500

func _physics_process(delta):
	velocity.y=0

	if Input.is_action_pressed("ui_up"):
		velocity.y=-velocidad
	elif Input.is_action_pressed("ui_down"):
		velocity.y=velocidad

	move_and_collide(velocity * delta)
	
