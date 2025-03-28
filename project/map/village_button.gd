extends TextureButton

var village_name : String

@export var village : Village
@onready var label_text = %Name

func _ready() -> void:
	set_properties()


func set_properties():
	texture_normal = village.button_texture
	label_text.text = village.village_name
	
