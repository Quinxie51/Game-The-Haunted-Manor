extends Node2D

var targetScenePath: String = "res://scene/bedroom.tscn"

func _on_bedroom_door_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		get_tree().change_scene_to_file(targetScenePath)
