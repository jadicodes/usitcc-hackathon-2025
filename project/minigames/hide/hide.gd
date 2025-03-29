extends Node2D


var secured : int = 0

signal succeeded


func _process(delta):
	
	if secured != 8:
		return
	emit_signal("succeeded")


func _on_tapping_button_no_more_clicks():
	secured += 1


func hide_everything():
	$TappingButton.hide()
	$TappingButton2.hide()
	$TappingButton3.hide()
	$TappingButton4.hide()
	$TappingButton5.hide()
	$TappingButton6.hide()
	$TappingButton7.hide()
	$TappingButton8.hide()
	$Label.hide()
