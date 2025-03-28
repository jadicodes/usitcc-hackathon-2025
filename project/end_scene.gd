extends Node2D


func _on_button_pressed():
	get_tree().change_scene_to_file("res://game.tscn")


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://game.tscn")
