extends KinematicBody2D

var movimento = Vector2()
var velocidade = 300

func _physics_process(delta):
	if Input.is_action_pressed("ui_right"):
		movimento.x = velocidade
	elif Input.is_action_pressed("ui_left"):
		movimento.x = - velocidade
	else:
		movimento.x = 0
	if Input.is_action_pressed("ui_up"):
		movimento.y = - velocidade
	elif Input.is_action_pressed("ui_down"):
		movimento.y = velocidade
	else:
		movimento.y = 0
	move_and_slide(movimento)
	pass

#func _input(event):
#	if event is InputEventScreenTouch:
#		if event.pressed:
#			movimento.x = velocidade
#	move_and_slide(movimento)
#	pass
