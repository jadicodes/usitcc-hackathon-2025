extends Control

enum state {
	MAP,
	STAGE
}

var current_state : int
@onready var map = %Map
@onready var stage = %Stage


func change_state(new_state):
	current_state = new_state
	match current_state:
		state.MAP:
			stage.hide()
			map.show()
		state.STAGE:
			map.hide()
			stage.show()
