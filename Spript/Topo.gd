extends Panel

func _on_voltar_pressed():
	get_tree().paused = false
	if  is_in_group("TelaNivel"):
		get_tree().change_scene("res://Scenes/Main.tscn")
	else: 
		get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_Configuracao_pressed():
	get_tree().paused = true
	$PopupConfiguracao.show()
