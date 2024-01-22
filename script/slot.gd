extends Panel
var get_item = false


func _input(event):
	if event is InputEventMouseButton and event.pressed:
		var ev: InputEventMouseButton = event
		if get_global_rect().has_point(ev.global_position):
			get_item = true
			activate_flashLight(get_item)
					
func activate_flashLight(get_item):
	return get_item
	
			
		
