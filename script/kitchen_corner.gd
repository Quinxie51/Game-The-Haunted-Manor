extends Node2D

var particle_effect: Particles2D
var word_list: Array = ["Apple", "Banana", "Carrot"]  # Add your words here
var found_objects: Array = []

func _ready():
	# Connect mouse click signal to the _on_mouse_click function
	connect("mouse_click", self, "_on_mouse_click")

# Function to handle mouse click event
func _on_mouse_click():
	var mouse_position = get_viewport().get_mouse_position()
	var clicked_objects = get_tree().get_nodes_in_group("hidden_objects")  # Group all hidden object nodes

	for obj in clicked_objects:
		if obj is CollisionShape2D and obj.rect_global.contains(mouse_position):
			# Hidden object found
			on_object_found(obj)
			return

# Function to handle when a hidden object is found
func on_object_found(object):
	var object_name = object.get_parent().get_name()
	
	if object_name not in found_objects:
		found_objects.append(object_name)
		show_particle_effect(object.global_position)
		remove_word_from_list(object_name)
		
		# Optionally, you can perform additional actions when an object is found

# Function to show particle effect at a specific position
func show_particle_effect(position):
	var particle_instance = particle_effect.instance()
	particle_instance.global_position = position
	add_child(particle_instance)

# Function to remove a found word from the list
func remove_word_from_list(word):
	if word_list.has(word):
		word_list.erase(word)
		# Optionally, you can update UI or perform other actions when a word is removed from the list
