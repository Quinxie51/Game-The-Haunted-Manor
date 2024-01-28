extends Area2D
@onready var ui_layer = $"/root/Ui"
@export var targetScene: String
var time = 0

func _on_input_event(viewport, event, shape_idx):
   if event.is_pressed():
      var puzzle = ui_layer.get_puzzle()
      if !puzzle.puzzle_won():
         ui_layer.show_puzzle(true)
      elif puzzle.puzzle_won():
         var targetScenePath = "res://scene/"+targetScene+".tscn"
         get_tree().change_scene_to_file(targetScenePath)
         

