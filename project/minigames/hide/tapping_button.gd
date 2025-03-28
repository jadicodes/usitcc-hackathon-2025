extends Button

signal finished

var clicked : int = 0

func _process(delta):
	if clicked == 4:
		self.disabled = true
		emit_signal("finished")

func _on_pressed():
	clicked += 1
