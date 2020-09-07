extends Node2D

#func _ready():
#	if global.music == true:
#		MusicController.play_music()
#	else:
#		MusicController.stop_music()

func _on_Iniciar_pressed():
	get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_Sair_pressed():
	get_tree().quit()

func _on_Configuracao_pressed():
	get_tree().paused = true
	$PopupConfiguracao.show()
