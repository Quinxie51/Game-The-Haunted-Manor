extends Panel
var get_item = false

signal power_flashlight

func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var ev: InputEventMouseButton = event
		if get_global_rect().has_point(ev.global_position):
			power_flashlight.emit()
			get_item = true
					
func activate_flashLight():
	return get_item
	
			
		
