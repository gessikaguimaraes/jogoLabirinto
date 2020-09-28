extends PopupPanel

onready var musicButton = $GridContainer/Container/VBoxContainer/MusicButton
onready var controleButton = $GridContainer/Container/VBoxContainer/ControlButton

var musicHabilitado = load("res://assets/images/music_on.png")
var musicDesabilitado = load("res://assets/images/music_off.png")

var controlHabilitado = load("res://assets/images/control_on.png")
var controlDesabilitado = load("res://assets/images/control_off.png")

var music 
var control

func _ready():
	music = Game.readData('music')
	control = Game.readData('control')
	Game.onlySaveData(true)
	controlarMusica()
	controlarControle()
	
func controlarMusica():
	if music:
		musicButton.texture_normal = musicHabilitado
	else:
		musicButton.texture_normal = musicDesabilitado

func controlarControle():
	if control:
		controleButton.texture_normal = controlHabilitado
	else:
		controleButton.texture_normal = controlDesabilitado

func _on_fechar_pressed():
	get_tree().paused = false
	$".".hide()

func _on_Controle_pressed():
	control = Game.readData('control')
	if control:
		global.control = false
		controleButton.texture_normal = controlDesabilitado
	else:
		controleButton.texture_normal = controlHabilitado
		global.control = true
	Game.saveData({"control": global.control})

func _on_MusicButton_pressed():
	music = Game.readData('music')
	if music:
		global.music = false
		MusicController.stop_music()
		musicButton.texture_normal = musicDesabilitado
	else:
		global.music = true
		MusicController.play_music()
		musicButton.texture_normal = musicHabilitado
	Game.saveData({"music": global.music})
