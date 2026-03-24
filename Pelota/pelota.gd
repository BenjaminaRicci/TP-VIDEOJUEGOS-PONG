extends CharacterBody2D

var velocidad = 300

func _ready():
	_iniciarPelota()

func _iniciarPelota():
	if randi() % 2 == 0:
		velocity.x = 1
	else:
		velocity.x = -1
	if randi() % 2 == 0:
		velocity.y = 1
	else:
		velocity.y = -1
	velocidad = 300
	velocity *= velocidad

func _physics_process(delta):
	var infoColision = move_and_collide(velocity * delta)
	if infoColision:
		velocity = velocity.bounce(infoColision.get_normal())
		velocidad += 25
		velocity = velocity.normalized() * velocidad
