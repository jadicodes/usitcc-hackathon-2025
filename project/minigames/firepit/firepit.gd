extends Node2D

var total_rocks_in_area : int= 0

signal succeeded

func _ready():
	pass

func _process(delta):
	if total_rocks_in_area == 6:
		emit_signal("succeeded")
		


func _on_rock_rock_placed():
	total_rocks_in_area += 1
