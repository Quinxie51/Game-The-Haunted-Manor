extends Node2D

@onready var objects = $Objects
var message_printed = false 
@onready var ui_layer = $"/root/Ui"
@onready var background_image = $BackgroundImage
@onready var win_kitchen = $"/root/Ui/Win_kitchen"

func _ready():
   for objectName in GameData.get_found_objects("Kitchen"):
      objects.find_child(objectName).queue_free()
      background_image.find_child(objectName).queue_free()
   
func _physics_process(delta):
   if objects.get_child_count() == 0 and not message_printed and not win_kitchen.is_flashlight_claimed:
      await get_tree().create_timer(1).timeout
      ui_layer.show_win_screen(true)
      objects.hide()
      message_printed = true
