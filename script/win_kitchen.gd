extends Control
@onready var flashlight = $".."


func _on_claim_pressed():
	queue_free()
	flashlight.show_flashlight(true)
	
	
	
	
