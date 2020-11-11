extends Node2D

onready var popup = $Popup
export (int) var fase = 1
export (Texture) var desenho

func _ready():
	Game.onlySaveData(true)

func _on_Area2D_body_entered(body):
	popup.show()
	get_tree().paused = true
	
	$Popup/Label.text = "Nível " + str(fase) + "\n Completado!"
	$Popup/Sprite.texture = desenho
	
	global.level = fase + 1

	if global.unlockedLevels == 1:
		global.unlockedLevels = 2
	elif global.unlockedLevels < global.level:
		global.unlockedLevels += 1
	Game.saveData({"level": global.unlockedLevels})
	print(global.level)
