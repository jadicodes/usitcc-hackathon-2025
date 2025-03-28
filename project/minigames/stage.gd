extends Node2D

var village : Village

@onready var _background : CompressedTexture2D


func set_properties():
	_background.texture = village.background
