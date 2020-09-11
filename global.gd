extends Node

var levels = []
var unlockedLevels = 1

var level = 1
var music = true
var control = false

func _mudarControle(nomeNode):
	if global.control:
		nomeNode.visible = true
	else:
		nomeNode.visible = false
