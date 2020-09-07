extends Node2D

func _on_Iniciar_pressed():
	get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_Sair_pressed():
	get_tree().quit()
