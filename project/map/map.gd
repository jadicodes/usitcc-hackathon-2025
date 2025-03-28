extends Control

signal village_selected(button)


func _on_village_button_pressed() -> void:
	village_selected.emit($VillageButton)


func _on_village_button_2_pressed() -> void:
	village_selected.emit($VillageButton2)


func get_village(button):
	return button.village
