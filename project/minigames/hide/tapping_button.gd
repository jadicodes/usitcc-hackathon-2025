extends Button

signal no_more_clicks

var clicked : int = 0


func _on_pressed():
	clicked += 1
	if clicked == 4:
		self.disabled = true
		emit_signal("no_more_clicks")
