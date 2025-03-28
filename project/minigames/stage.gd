extends Node2D

var village : Village

enum minigame {
	STICKBENDER,
	NONE
}

var current_minigame : int

@onready var _background : CompressedTexture2D


func set_properties():
	_background.texture = village.background


func _on_stickbending_succeeded() -> void:
	print("stickbending succeeded")
	change_minigame(minigame.NONE)


func change_minigame(new_minigame):
	current_minigame = new_minigame
	match current_minigame:
		minigame.STICKBENDER:
			$Stickbending.show()
		minigame.NONE:
			$Stickbending.hide()
