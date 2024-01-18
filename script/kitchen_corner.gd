extends Node2D

@onready var kettle = $Kettle
@onready var EFFECT = preload("res://scene/particles.tscn")

func _on_portal_area_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		var effect = EFFECT.instantiate()
		add_child(effect)
		effect.global_position = event.global_position
		kettle.queue_free()


