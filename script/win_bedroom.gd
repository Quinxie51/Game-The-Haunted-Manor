extends Control
@onready var puzzle = $".."
var is_puzzle_claimed = false


func _on_claim_pressed():
   hide()
   puzzle.show_puzzle_piece(true)
   is_puzzle_claimed = true
   
   
   
   
   
