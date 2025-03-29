extends Control

signal village_selected(button)


func get_village(button):
	return button.village


func _on_village_button_pressed() -> void:
	village_selected.emit($VillageButton)


func _on_village_button_2_pressed() -> void:
	village_selected.emit($VillageButton2)


func _on_village_button_3_pressed() -> void:
	village_selected.emit($VillageButton3)


func _on_village_button_4_pressed() -> void:
	village_selected.emit($VillageButton4)


func _on_village_button_5_pressed() -> void:
	village_selected.emit($VillageButton5)
