extends Area2D
@onready var ui_layer = $"../UILayer"
@export var targetScene: String
var time = 0

func _on_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		if time == 0:
			ui_layer.show_keyPad(true)
			time +=1
		elif time == 1:
			var targetScenePath = "res://scene/"+targetScene+".tscn"
			get_tree().change_scene_to_file(targetScenePath)
			
