extends Control

enum state {
	MAP,
	STAGE
}

var current_state : int
@onready var map = %Map
@onready var stage = %Stage


func _ready():
	change_state(state.MAP)


func change_state(new_state):
	current_state = new_state
	match current_state:
		state.MAP:
			stage.hide()
			map.show()
		state.STAGE:
			map.hide()
			stage.show()


func _on_map_village_selected(button) -> void:
	var current_village = $Map.get_village(button)
	$Stage.set_village(current_village)
	change_state(state.STAGE)


func _on_stage_return_to_map() -> void:
	change_state(state.MAP)
