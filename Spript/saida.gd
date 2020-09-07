extends Node2D

onready var popup = $Popup

func _ready():
	Game.onlySaveData(true)

func _on_Area2D_body_entered(body):
	popup.show()
	get_tree().paused = true
	
	if body.is_in_group("personagem1"):
		global.level = 2
	if body.is_in_group("personagem2"):
		$Popup/Label.text = "Nível 2 \n Completado!" #Muda o label
		global.level = 3
	if body.is_in_group("personagem3"):
		$Popup/Label.text = "Nível 3 \n Completado!" #Muda o label
		global.level = 4
	if body.is_in_group("personagem4"):
		$Popup/Label.text = "Nível 4 \n Completado!" #Muda o label
		global.level = 5
	if body.is_in_group("personagem5"):
		$Popup/Label.text = "Nível 5 \n Completado!" #Muda o label
		global.level = 6
	if body.is_in_group("personagem6"):
		$Popup/Label.text = "Nível 6 \n Completado!" #Muda o label
		global.level = 7
	if body.is_in_group("personagem7"):
		$Popup/Label.text = "Nível 7 \n Completado!" #Muda o label
		global.level = 8
	if body.is_in_group("personagem8"):
		$Popup/Label.text = "Nível 8 \n Completado!" #Muda o label
		global.level = 9
	if body.is_in_group("personagem9"):
		$Popup/Label.text = "Nível 9 \n Completado!" #Muda o label
		global.level = 10

	if global.unlockedLevels == 1:
		global.unlockedLevels = 2
	elif global.unlockedLevels < global.level:
		global.unlockedLevels += 1
	Game.saveData({"level": global.unlockedLevels})

	pass # Replace with function body.
