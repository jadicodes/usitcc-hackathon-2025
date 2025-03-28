extends TextureButton

var village_name : String

@export var village : Village

func set_properties():
	texture_normal = village.button_texture
	village_name = village.village_name
