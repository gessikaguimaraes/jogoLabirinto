extends Node2D

func _ready():
	print(global.control)
	if global.control:
		$ControleMobile.visible = true
	else:
		$ControleMobile.visible = false
	pass # Replace with function body.

#
#func _draw():
#	draw_line(Vector2(0,0), Vector2(50,50), Color.black)
