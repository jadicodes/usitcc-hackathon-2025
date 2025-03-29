extends Node2D

signal return_to_map

var village : Village

enum state {
	INTRO,
	STICKBENDER,
	FIREPIT,
	MAP
}

var current_minigame : int

@onready var _background = $Background

func _ready():
	change_minigame(state.STICKBENDER)


func set_village(new_village):
	village = new_village
	_background.texture = village.background


func _on_stickbending_succeeded() -> void:
	change_minigame(state.FIREPIT)


func change_minigame(new_minigame):
	current_minigame = new_minigame
	match current_minigame:
		state.FIREPIT:
			$Stickbending.hide()
			$Firepit.show()
		state.STICKBENDER:
			$Stickbending.show()
			$Firepit.hide()
		state.MAP:
			emit_signal("return_to_map")


func _on_firepit_succeeded() -> void:
	get_tree().change_scene_to_file("res://end_scene.tscn")
