extends Button

var draggable = false
var is_inside_dropable = false
var body_ref
var offset: Vector2
var inPos : Vector2 #Initial Posistion
var grabbed: bool

signal rock_placed

func _process(delta):
	if grabbed:
		var mouse_pos = get_global_mouse_position()
		global_position = mouse_pos
		global.is_dragging = true
		var tween = get_tree().create_tween()
		if is_inside_dropable:
			tween.tween_property(self,"position", body_ref.position,0.2).set_ease(Tween.EASE_OUT)

func _on_area_2d_mouse_entered():
	if not global.is_dragging:
		draggable = true
		scale = Vector2(1.05, 1.05)

func _on_area_2d_mouse_exited():
	if not global.is_dragging:
		draggable = false
		scale = Vector2(1, 1)

func _on_area_2d_body_entered(body):
	if body.is_in_group('dropable'):
		is_inside_dropable = true
		body_ref = body
		rock_placed.emit()
		
		

func _on_area_2d_body_exited(body):
	if body.is_in_group("dropable"):
		is_inside_dropable = false

func _unhandled_input(event):
	if draggable and (event is InputEventMouseButton or event is InputEventMouseMotion):
		get_viewport().set_input_as_handled()
		


func _on_button_down() -> void:
	grabbed = true


func _on_button_up() -> void:
	grabbed = false
