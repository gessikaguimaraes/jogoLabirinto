extends PopupPanel

func _ready():
	Game.onlySaveData(true)
	if global.music:
		$GridContainer/Container/HBoxContainer/MusicButton.toggle_mode = true
	else:
		$GridContainer/Container/HBoxContainer/MusicButton.toggle_mode = false
	
func _on_Button_pressed():
	get_tree().paused = false
	$".".hide()

func _on_MusicButton_toggled(button_pressed):
	if button_pressed:
		MusicController.play_music()
	else:
#		MusicController.connect("toggled", self, "stop_music")
		MusicController.stop_music()
	print(button_pressed)
	global.music = button_pressed
	Game.saveData({"music": button_pressed})
