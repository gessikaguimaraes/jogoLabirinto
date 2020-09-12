extends KinematicBody2D

export (Texture) var personagem
export (int) var fase = 1

var target = Vector2()
var movimento = Vector2()
var velocidade = 300

func _ready():
	$Sprite.texture = personagem

func _input(event):
	if event is InputEventScreenTouch:
		target = get_global_mouse_position()

func _physics_process(delta):
	if global.control:
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
	else:
#		var motionx=(get_global_mouse_position().x-position.x)*0.5
#		var motiony=(get_global_mouse_position().y-position.y)*0.5
#		move_and_slide(Vector2(motionx,motiony))
		movimento = position.direction_to(target) * velocidade
		# look_at(target)
		if position.distance_to(target) > 5:
			movimento = move_and_slide(movimento)
	

