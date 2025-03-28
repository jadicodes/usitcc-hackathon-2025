extends Node2D


func _process(_delta):
	var point_count = $Stick.get_point_count()
	
	var mouse_pos = get_global_mouse_position()
	$Stick.set_point_position(0, mouse_pos)
	for point_index in point_count:
		if point_index == 0:
			continue
		var current_point_pos: Vector2 = $Stick.get_point_position(point_index)
		var next_point_pos: Vector2 = $Stick.get_point_position(point_index + 1)
		$Stick.set_point_position(point_index, next_point_pos - current_point_pos)


func _draw():
	for point_index in get_point_count():
		pass
