extends CanvasLayer

signal get_flashlight
@onready var flash_slot = $Inventory/FlashLight_claim
func _ready():
   flash_slot.power_flashlight.connect(toggle_flashlight)

func _process(delta):
   var current_scene = get_tree().get_current_scene()
   if current_scene != null:
      var current_scene_name = get_tree().get_current_scene().name
      var scene_to_exclude_name = "Main game"
      if current_scene_name != scene_to_exclude_name:
         self.visible = true  
      else:
         self.visible = false 
   else:
      self.visible = false 
      
func show_win_screen(found:bool):
   $Win_kitchen.visible = found

func show_flashlight(show: bool):
   $Inventory/FlashLight_claim/flashLight.visible = show

func show_keyPad(found:bool):
   if $Keypad != null:
      $Keypad.visible = found
            
func get_keyPad():
   return $Keypad

func toggle_flashlight():
   get_flashlight.emit()
   return $Inventory/FlashLight_claim
   

