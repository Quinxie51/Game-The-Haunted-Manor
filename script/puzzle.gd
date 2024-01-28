extends Control
var game_won = false
@onready var board = $TextureRect/Board
@onready var label = $TextureRect/Label


func _on_restart_pressed():
   board.reset_board()
   board.game_state = board.GAME_STATES.STARTED


func _on_board_game_won():
   label.text = 'You win'
   game_won = true
