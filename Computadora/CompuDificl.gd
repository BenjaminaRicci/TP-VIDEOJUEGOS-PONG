extends CharacterBody2D

var velocidad = 1000
var pelota

func _ready():
	pelota = get_parent().get_node("Pelota")
	
func _physics_process(delta):
	if pelota.position.y < position.y:
		velocity.y = -1
	else:
		velocity.y = 1
	
	velocity *= velocidad
	
	move_and_collide(velocity*delta)
			
