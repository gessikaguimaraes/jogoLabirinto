extends PopupPanel

onready var musicButton = $GridContainer/Container/VBoxContainer/MusicButton
onready var controleButton = $GridContainer/Container/VBoxContainer/controleButton

export (Texture) var musicHabilitado
export (Texture) var musicDesabilitado

export (Texture) var controlHabilitado
export (Texture) var controlDesabilitado

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
		get_node("GridContainer/Container/VBoxContainer/TextureButton").texture_normal = musicHabilitado
	else:
		get_node("GridContainer/Container/VBoxContainer/TextureButton").texture_normal = musicDesabilitado

func controlarControle():
	if control:
		get_node("GridContainer/Container/VBoxContainer/Controle").texture_normal = controlHabilitado
	else:
		get_node("GridContainer/Container/VBoxContainer/Controle").texture_normal = controlDesabilitado

func _on_fechar_pressed():
	get_tree().paused = false
	$".".hide()

func _on_TextureButton_pressed():
	music = Game.readData('music')
	if music:
		global.music = false
		MusicController.stop_music()
		get_node("GridContainer/Container/VBoxContainer/TextureButton").texture_normal = musicDesabilitado
	else:
		global.music = true
		MusicController.play_music()
		get_node("GridContainer/Container/VBoxContainer/TextureButton").texture_normal = musicHabilitado
	Game.saveData({"music": global.music})

func _on_Controle_pressed():
	control = Game.readData('control')
	if control:
		global.control = false
		get_node("GridContainer/Container/VBoxContainer/Controle").texture_normal = controlDesabilitado
	else:
		get_node("GridContainer/Container/VBoxContainer/Controle").texture_normal = controlHabilitado
		global.control = true
	Game.saveData({"control": global.control})
	pass # Replace with function body.
