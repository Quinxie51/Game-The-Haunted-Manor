extends Area2D

@export var targetScene: String
func _on_input_event(viewport, event, shape_idx):
   if event.is_pressed():
      
      var targetScenePath = "res://scene/"+targetScene+".tscn"
      get_tree().change_scene_to_file(targetScenePath)

