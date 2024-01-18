extends Node2D
@export var follow_speed = 500.0
@onready var light_node = $Light2D
var targetScenePath: String = "res://scene/bedroom.tscn"


func _on_bedroom_door_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		get_tree().change_scene_to_file(targetScenePath)


func _process(delta):
	# Get the global position of the mouse cursor
	var target_position = get_global_mouse_position()
	# Smoothly move the light node towards the mouse cursor using linear_interpolate
	light_node.global_position = light_node.global_position.lerp(target_position, follow_speed * delta)


