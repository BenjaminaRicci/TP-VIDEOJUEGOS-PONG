extends Node2D

const CENTRO = Vector2(640,360)

var player2Score = 0
var player1Score = 0

func _on_gol_izq_body_entered(body):
	player2Score += 1
	$P1Goal.text = str(player2Score)
	_puntoHecho()
	
	


func _on_gol_derecha_body_entered(body):
	player1Score += 1
	$P2Goal.text = str(player1Score)
	_puntoHecho()
	

func _puntoHecho():
	$Pelota.position = CENTRO
	$Pelota.call("_iniciarPelota")
	$Paleta1.position.y  = CENTRO.y
	$Paleta2.position.y  = CENTRO.y
	


func _on_facil_pressed() -> void:
	get_tree().change_scene_to_file("res://menu.tscn")
