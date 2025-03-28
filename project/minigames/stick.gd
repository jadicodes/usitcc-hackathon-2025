extends Line2D

@export var num_segments: int = 4
@export var segment_length: int = 2
@export var starting_pos: Vector2 = Vector2(100, 00)



func _process(_delta):
	var point_count = get_point_count()
	
	var mouse_pos = to_local(get_global_mouse_position())
	set_point_position(0, mouse_pos)


func _draw():
	for point_index in get_point_count():
		var point_position: Vector2 = get_point_position(point_index)
		draw_circle(point_position, 20, Color.SADDLE_BROWN)
