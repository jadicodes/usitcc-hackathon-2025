extends Node2D


var secured : int = 0

signal suceeded

func _process(delta):
	
	if secured != 4:
		return
	emit_signal("suceeded")


func _on_tapping_button_finished():
	secured += 1
