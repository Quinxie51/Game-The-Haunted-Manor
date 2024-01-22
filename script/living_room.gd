extends Node2D
@export var follow_speed = 500.0
@onready var light_node = $Light2D
@onready var flashLightClick = $UI/Inventory/FlashLight_claim


func _process(delta):
	var target_position = get_global_mouse_position()
	if flashLightClick:
		light_node.visible
		light_node.global_position = Vector2i(target_position)
	
		


