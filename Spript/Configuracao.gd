extends PopupPanel

func _ready():
	if global.music == true:
		$GridContainer/Container/HBoxContainer/MusicButton.toggle_mode = true
	else:
		$GridContainer/Container/HBoxContainer/MusicButton.toggle_mode = false
	
func _on_Button_pressed():
	get_tree().paused = false
	$".".hide()

func _on_MusicButton_toggled(button_pressed):
	if button_pressed == true:
		MusicController.play_music()
	else:
		MusicController.stop_music()
	print(button_pressed)
	Game.saveData({"music": button_pressed})
