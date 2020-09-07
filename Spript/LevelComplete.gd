extends Popup

func _on_voltar_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_jogarNovamente_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_avancar_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Fase" + str(global.level) +  ".tscn")

