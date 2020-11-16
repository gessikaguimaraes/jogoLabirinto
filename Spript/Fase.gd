extends Node2D

func _process(delta):
	var control = Game.readData('control')
	if control:
		$ControleMobile.visible = true
	else:
		$ControleMobile.visible = false
