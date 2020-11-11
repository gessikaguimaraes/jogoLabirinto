extends Node2D

onready var admob = $AdMob

func _on_voltar_pressed():
	admob.show_interstitial()
	get_tree().change_scene("res://Scenes/Main.tscn")
