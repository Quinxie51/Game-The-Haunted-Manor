extends Node2D

## Define the target scene path
#var targetScenePath: String = "res://scene/bedroom.tscn"
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass  # You can leave this empty if you don't need to perform continuous actions.
#
## Called whenever an input event occurs (mouse, keyboard, etc.)
#func _input(event):
	#print("input")
	## Check if the input event is a mouse button press event
	#if event is InputEventMouseButton:
		## Check if the left mouse button is pressed (button index 1)
		#if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			## Check if the mouse click occurred within the bounds of the Area2D
			#if $BedroomDoor.rect_min_size.distance_to(event.position) < 0.5:
				## Switch to the target scene
				#get_tree().change_scene(targetScenePath)

