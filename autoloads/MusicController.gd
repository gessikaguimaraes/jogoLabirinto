extends Node

func _ready():
	pass # Replace with function body.

func play_music():
	$Music.play()
	
func stop_music():
	$Music.stop()

#func _on_Music_finished():
#	$Music.play()
