extends Panel

export var numeroFase = 1
export(Color, RGB) var cor

func _ready():
	pass

func _on_voltar_pressed():
	get_tree().paused = false
	if  is_in_group("TelaNivel"):
		get_tree().change_scene("res://Scenes/Main.tscn")
	else: 
		get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_Configuracao_pressed():
	get_tree().paused = true
	$PopupConfiguracao.show()
