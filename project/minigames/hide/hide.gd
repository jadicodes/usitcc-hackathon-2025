extends Node2D


var secured : int = 0

signal succeeded


func _process(delta):
	
	if secured != 8:
		return
	emit_signal("succeeded")


func _on_tapping_button_no_more_clicks():
	secured += 1
	print(secured)
