extends Node2D


var secured : int = 0

signal succeeded

func _process(delta):
	
	if secured != 4:
		return
	emit_signal("succeeded")


func _on_tapping_button_finished():
	secured += 1
