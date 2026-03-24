extends Node2D

const CENTRO = Vector2(640,360)

var compuScore = 0
var playerScore = 0

func _on_gol_izq_body_entered(body):
	compuScore += 1
	$PGoal.text = str(compuScore)
	_puntoHecho()
	
	


func _on_gol_derecha_body_entered(body):
	playerScore += 1
	$MGoal.text = str(playerScore)
	_puntoHecho()
	

func _puntoHecho():
	$Pelota.position = CENTRO
	$Pelota.call("_iniciarPelota")
	$Paleta1.position.y  = CENTRO.y
	$Computadora.position.y  = CENTRO.y

func _on_facil_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
