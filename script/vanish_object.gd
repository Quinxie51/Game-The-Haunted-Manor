extends Area2D

@export var vanishObject : Label
@onready var EFFECT = preload("res://scene/particles.tscn")

func _on_portal_area_input_event(viewport, event, shape_idx):
	if event.is_pressed() && vanishObject != null:
		var effect = EFFECT.instantiate()
		add_child(effect)
		effect.global_position = event.global_position
		vanishObject.queue_free()
		
		

