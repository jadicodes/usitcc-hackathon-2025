extends Node2D

var village : Village

enum state {
	INTRO,
	STICKBENDER,
	FIREPIT,
	MAP
}

var current_minigame : int

@onready var _background : CompressedTexture2D


func set_village(new_village):
	village = new_village
	

func set_properties():
	_background.texture = village.background


func _on_stickbending_succeeded() -> void:
	print("stickbending succeeded")
	change_minigame(state.MAP)


func change_minigame(new_minigame):
	current_minigame = new_minigame
	match current_minigame:
		state.INTRO:
			pass
		state.STICKBENDER:
			$Stickbending.show()
		state.MAP:
			$Stickbending.hide()
