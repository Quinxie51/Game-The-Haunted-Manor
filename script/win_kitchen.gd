extends Control
@onready var flashlight = $".."
var is_flashlight_claimed = false


func _on_claim_pressed():
   hide()
   flashlight.show_flashlight(true)
   is_flashlight_claimed = true
   
   
   
