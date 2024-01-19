extends Node2D

@onready var objects = $Objects
var message_printed = false 
@onready var ui_layer = $UI

func _physics_process(delta):
	if objects.get_child_count() == 0 and not message_printed:
		await get_tree().create_timer(1.5).timeout
		ui_layer.show_win_screen(true)
		objects.hide()
		message_printed = true
