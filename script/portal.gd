extends Area2D

@onready var kettle : Label
@onready var EFFECT = preload("res://scene/particles.tscn")


func _on_input_event(viewport, event, shape_idx):
	if event.is_pressed():
		var effect = EFFECT.instantiate()
		add_child(effect)
		effect.global_position = event.global_position
		kettle.queue_free()
	
