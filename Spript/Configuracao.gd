extends PopupPanel

onready var musicButton = $GridContainer/Container/VBoxContainer/MusicButton
onready var controleButton = $GridContainer/Container/VBoxContainer/controleButton

func _ready():
	var music = Game.readData('music')
#	print(music)
	var control = Game.readData('control')
#	print(control)
#	Game.onlySaveData(true)

#	musicButton.toggle_mode = true
#	if global.music:
#		musicButton.set_toggle_mode(true)
##		MusicController.play_music()
#	else:
#		musicButton.set_toggle_mode(false)
	
#	if global.control:
#		controleButton.toggle_mode = true
#	else:
#		controleButton.toggle_mode = false


func _on_fechar_pressed():
	get_tree().paused = false
	$".".hide()

func _on_MusicButton_toggled(button_pressed):
#	if button_pressed == true:
#		AudioServer.set_bus_mute(0,true)
#	else:
#		AudioServer.set_bus_mute(0,false)
	if button_pressed:
		MusicController.play_music()
	else:
#		MusicController.connect("toggled", self, "stop_music")
		MusicController.stop_music()
	print(button_pressed)
	global.music = button_pressed
	Game.saveData({"music": button_pressed})

func _on_controleButton_toggled(button_pressed):
	global.control = button_pressed
	Game.saveData({"control": button_pressed})

func _on_Button_pressed():
	var t
	if global.control:
		t = false
	else:
		t = true
	global.control = t
	Game.saveData({"control": t})
	pass # Replace with function body.
