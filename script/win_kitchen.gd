extends Control
@onready var flashlight = $".."


func _on_claim_pressed():
   hide()
   flashlight.show_flashlight(true)
   
   
   
   
