extends Panel

export var numeroFase = 1
export(Color, RGB) var 
onready var admob = $AdMob

func _ready():
#	get_node("Panel/nivel").text = str(numeroFase)
#	get_node("Panel"). = cor
	pass

func _on_voltar_pressed():
	get_tree().paused = false
	if  is_in_group("TelaNivel"):
		admob.load_interstitial()
		get_tree().change_scene("res://Scenes/Main.tscn")
	else: 
		get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_Configuracao_pressed():
	get_tree().paused = true
	$PopupConfiguracao.show()
