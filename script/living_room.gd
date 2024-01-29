extends Node2D
@export var follow_speed = 500.0
@onready var light_node = $Light2D
@onready var ui = $"/root/Ui"


func _ready():
   ui.get_flashlight.connect(turn_on_light)


func _process(delta):
   var target_position = get_global_mouse_position()
   light_node.global_position = Vector2i(target_position)

func turn_on_light():
   light_node.visible = !light_node.visible
   

