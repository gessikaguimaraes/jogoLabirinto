extends Node2D

func _process(delta):
	var control = Game.readData('control')
	if control:
		$ControleMobile.visible = true
	else:
		$ControleMobile.visible = false

#
#func _draw():
#	draw_line(Vector2(0,0), Vector2(50,50), Color.black)
