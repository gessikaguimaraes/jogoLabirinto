extends KinematicBody2D
#Géssika - Touch funciona arrastando ele
#var movimento = Vector2()
#var velocidade = 300
#func _input(event):
#	if event is InputEventScreenDrag:
#		if $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.DOWN:
#			movimento.y = velocidade
#		elif $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.UP:
#			movimento.y = - velocidade
#		else:
#			movimento.y = 0
#		if $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.LEFT:
#			movimento.x = - velocidade
#		elif $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.RIGHT:
##			$Sprite.modulate = Color.orange
#			movimento.x = velocidade
#		else:
#			movimento.x = 0
#	move_and_slide(movimento)

# Géssika - Touch funciona - mover para onde eu clicar
export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()

func _input(event):
	if event is InputEventScreenTouch:
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	# look_at(target)
	if position.distance_to(target) > 5:
		velocity = move_and_slide(velocity)

#Géssika - Dar certo com botoes
#var movimento = Vector2()
#var velocidade = 300
#
#func _physics_process(delta):
#	if Input.is_action_pressed("ui_right"):
#		movimento.x = velocidade
#	elif Input.is_action_pressed("ui_left"):
#		movimento.x = - velocidade
#	else:
#		movimento.x = 0
#	if Input.is_action_pressed("ui_up"):
#		movimento.y = - velocidade
#	elif Input.is_action_pressed("ui_down"):
#		movimento.y = velocidade
#	else:
#		movimento.y = 0
#	move_and_slide(movimento)
#	pass

#
#func _input(event):
#	if event is InputEventScreenDrag:
#		if $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.DOWN:
#			$Sprite.modulate = Color.red
#		if $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.UP:
#			$Sprite.modulate = Color.blue
#		if $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.LEFT:
#			$Sprite.modulate = Color.green
#		if $TouchScreenClass.get_drag_direction(event.relative,0) == Vector2.RIGHT:
#			$Sprite.modulate = Color.orange

#func _input(event):
#    if event is InputEventScreenDrag:
#        if event.speed.y < -10:
#            self.state = BOOST
#                    self.character_on_input_press_position = self.position
#            self.get_tree().set_input_as_handled()
#        elif event.speed.y > 10:
#            self.state = DIVE
#            self.character_on_input_press_position = self.position
#            self.get_tree().set_input_as_handled()
#    elif event is InputEventScreenTouch:
#        if event.pressed:
#            self.state = FLY
#            self.character_on_input_press_position = self.position
#            self.get_tree().set_input_as_handled()
