extends PopupPanel

func _on_Button_pressed():
	get_tree().paused = false
	$".".hide()
