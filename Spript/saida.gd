extends Node2D

onready var popup = $Popup
export (int) var fase = 1

func _ready():
	Game.onlySaveData(true)

func _on_Area2D_body_entered(body):
	popup.show()
	get_tree().paused = true
	
	$Popup/Label.text = "Nível " + str(fase) + "\n Completado!"
	if fase != 10:
		global.level +=1
	else:
		global.level = 10

	if global.unlockedLevels == 1:
		global.unlockedLevels = 2
	elif global.unlockedLevels < global.level:
		global.unlockedLevels += 1
	Game.saveData({"level": global.unlockedLevels})

	pass # Replace with function body.
