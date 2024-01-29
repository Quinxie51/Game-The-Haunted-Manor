extends Node2D

@onready var objects = $Objects
var message_printed = false 
@onready var ui_layer = $"/root/Ui"
@onready var background_image = $BackgroundImage
@onready var win_bedroom = $"/root/Ui/Win_bedroom"

func _ready():
   for objectName in GameData.get_found_objects("Bedroom"):
      objects.find_child(objectName).queue_free()
      background_image.find_child(objectName).queue_free()
   
func _physics_process(delta):
   if objects.get_child_count() == 0 and not message_printed and not win_bedroom.is_puzzle_claimed:
      await get_tree().create_timer(1).timeout
      ui_layer.show_bedroom_win(true)
      objects.hide()
      message_printed = true
