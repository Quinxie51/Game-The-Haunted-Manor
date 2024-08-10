extends Area2D

func _on_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		$hint.visible = true
	  


func _on_mouse_entered():
	$sparkle.emitting = true

func _on_mouse_exited():
	$sparkle.emitting = false
