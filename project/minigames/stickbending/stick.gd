extends Line2D

@export var segment_length: int = 150
var grabbed : bool


func _process(_delta):
	if grabbed:
		var mouse_pos = to_local(get_global_mouse_position())
		set_point_position(0, mouse_pos)
		$Button.position = mouse_pos
		$SuccessDetector.position = mouse_pos

		# Make each point follow the one before it
		for i in range(1, get_point_count() - 1):
			var prev_pos = get_point_position(i - 1)
			var current_pos = get_point_position(i)
			var direction = (prev_pos - current_pos).normalized()
			var target_pos = prev_pos - direction * segment_length
			
			# Prevent overlap by keeping a fixed distance
			if current_pos.distance_to(prev_pos) > segment_length:
				set_point_position(i, target_pos)


func _draw():
	for point_index in get_point_count():
		var point_position: Vector2 = get_point_position(point_index)
		draw_circle(point_position, 22, Color.SADDLE_BROWN)


func _on_button_button_down() -> void:
	grabbed = true


func _on_button_button_up() -> void:
	grabbed = false
