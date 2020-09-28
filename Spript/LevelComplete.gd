extends Popup

onready var admob = $AdMob

func _ready():
	admob.load_interstitial()

func _on_voltar_pressed():
	get_tree().paused = false
	get_tree().change_scene("res://Scenes/Niveis.tscn")

func _on_jogarNovamente_pressed():
	admob.show_interstitial()
	get_tree().paused = false
	get_tree().reload_current_scene()

func _on_avancar_pressed():
	get_tree().paused = false
	if global.level != 10:
		get_tree().change_scene("res://Scenes/Fase" + str(global.level) +  ".tscn")
	else:
		get_tree().change_scene("res://Scenes/Final.tscn")
