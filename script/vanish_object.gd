extends Area2D

@export var vanishObject : Label
@onready var objects = $"../../Objects"
@onready var EFFECT = preload("res://scene/particles.tscn")

func _on_portal_area_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		var effect = EFFECT.instantiate()
		add_child(effect)
		effect.global_position = event.global_position
		vanishObject.queue_free()
		if objects.get_child_count() == 0:
			print("all  done")
		queue_free() #remove the area

