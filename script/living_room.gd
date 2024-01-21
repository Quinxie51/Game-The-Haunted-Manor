extends Node2D
@export var follow_speed = 500.0
@onready var light_node = $Light2D


func _process(delta):
	var target_position = get_global_mouse_position()
	light_node.global_position = Vector2i(target_position)
	
		


