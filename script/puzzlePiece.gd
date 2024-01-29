extends Panel
var get_item = false

signal power_puzzle

func _input(event):
   if event is InputEventMouseButton and event.pressed:
      var ev: InputEventMouseButton = event
      if get_global_rect().has_point(ev.position):
         power_puzzle.emit()
         get_item = true
               
func activate_puzzle():
   return get_item
