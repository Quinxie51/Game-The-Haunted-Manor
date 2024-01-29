extends Panel

signal power_flashlight

func _input(event):
   if event is InputEventMouseButton and event.pressed:
      var ev: InputEventMouseButton = event
      if get_global_rect().has_point(ev.position):
         power_flashlight.emit()
         #get_item = true

   
         
      
