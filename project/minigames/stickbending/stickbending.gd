extends Node2D

var total_sticks_in_area : int = 0

signal succeeded


func _on_area_2d_area_entered(_area: Area2D) -> void:
	total_sticks_in_area += 1
	if total_sticks_in_area == 4:
		emit_signal("succeeded")


func _on_area_2d_area_exited(_area: Area2D) -> void:
	total_sticks_in_area -= 1
