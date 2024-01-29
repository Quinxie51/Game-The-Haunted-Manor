extends Node2D

@onready var objects = $Objects
var message_printed = false 
@onready var ui_layer = $"/root/Ui"

func _physics_process(delta):
   if objects.get_child_count() == 0 and not message_printed:
      await get_tree().create_timer(1).timeout
      ui_layer.show_bedroom_win(true)
      objects.hide()
      message_printed = true
