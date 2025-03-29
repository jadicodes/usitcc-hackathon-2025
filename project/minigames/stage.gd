extends Node2D

signal return_to_map

var village : Village

enum state {
	INTRO,
	STICKBENDER,
	FIREPIT,
	HIDE,
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
	change_minigame(state.HIDE)


func change_minigame(new_minigame):
	current_minigame = new_minigame
	match current_minigame:
		state.FIREPIT:
			$Stickbending.hide()
			$Firepit.show()
			$Hide.hide()
		state.STICKBENDER:
			$Stickbending.show()
			$Firepit.hide()
			$Hide.hide()
		state.HIDE:
			$Stickbending.hide()
			$Firepit.hide()
			$Hide.show()
		state.MAP:
			emit_signal("return_to_map")


func _on_firepit_succeeded() -> void:
	get_tree().change_scene_to_file("res://end_scene.tscn")



func _on_hide_succeeded() -> void:
	change_minigame(state.FIREPIT)
