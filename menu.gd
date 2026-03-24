extends Control


func _on_facil_pressed() -> void:
	get_tree().change_scene_to_file("res://JuegoCompleto/PvMACHINE/pong_PvMfacil.tscn")


func _on_medio_pressed() -> void:
	get_tree().change_scene_to_file("res://JuegoCompleto/PvMACHINE/pong_PvMmedio.tscn")


func _on_dificil_pressed() -> void:
	get_tree().change_scene_to_file("res://JuegoCompleto/PvMACHINE/pong_PvMdificil.tscn")


func _on_pvp_pressed() -> void:
	get_tree().change_scene_to_file("res://JuegoCompleto/PvP/pong_PvsP.tscn")
