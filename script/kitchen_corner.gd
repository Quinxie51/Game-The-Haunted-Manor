extends Node2D

@onready var objects = $Objects
var message_printed = false 

func _physics_process(delta):
	if objects.get_child_count() == 0 and not message_printed:
		print("all done")
		message_printed = true
