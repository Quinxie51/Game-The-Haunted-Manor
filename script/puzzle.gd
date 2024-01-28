extends Control
var game_won = false
@onready var board = $TextureRect/Board
@onready var label = $TextureRect/Label
@export var targetScene: String


func _on_restart_pressed():
   board.scramble_board()
   board.game_state = board.GAME_STATES.STARTED

func _on_board_game_won():
   label.text = 'You win'
   game_won = true
   await get_tree().create_timer(1.5).timeout
   hide()
   var targetScenePath = "res://scene/"+targetScene+".tscn"
   get_tree().change_scene_to_file(targetScenePath)
func puzzle_won():
   return game_won

