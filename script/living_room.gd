extends Node2D
var light_node: Light2D
var targetScenePath: String = "res://scene/bedroom.tscn"
@export var follow_speed: float = 5.0  

func _on_bedroom_door_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		get_tree().change_scene_to_file(targetScenePath)



func _ready():
	light_node = $Light2D  

func _process(delta):
	# Get the global position of the mouse cursor
	var target_position = get_global_mouse_position()
	# Smoothly move the light node towards the mouse cursor using linear_interpolate
	light_node.global_position = light_node.global_position.linear_interpolate(target_position, follow_speed * delta)
	light_node.color = Color(1, 1, 1)  
	light_node.radius = 200.0

