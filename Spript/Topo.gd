extends Panel

func _on_voltar_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Niveis.tscn")
