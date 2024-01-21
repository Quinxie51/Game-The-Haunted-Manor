extends Area2D
@onready var ui_layer = $"../UILayer"


@export var targetScene: String
func _on_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		ui_layer.show_keyPad(true)
	
		

