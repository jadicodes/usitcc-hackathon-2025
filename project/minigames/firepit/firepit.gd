extends Node2D

var total_rocks_in_area : int= 0

signal succeeded


func _process(delta):
	if total_rocks_in_area == 6:
		emit_signal("succeeded")
		get_tree().quit()


func _on_rock_rock_placed():
	total_rocks_in_area += 1
	print(total_rocks_in_area)
