extends Control
@onready var puzzle = $".."


func _on_claim_pressed():
   hide()
   puzzle.show_puzzle_piece(true)
   
   
   
   
