extends CanvasLayer

signal get_flashlight
@onready var flash_slot = $Inventory/FlashLight_claim
func _ready():
   flash_slot.power_flashlight.connect(toggle_flashlight)

func _process(delta):
   var current_scene = get_tree().get_current_scene()
   if current_scene != null:
      var current_scene_name = get_tree().get_current_scene().name
      var exclude_scenes = ["Main game", "level 1"]
      if current_scene_name not in exclude_scenes:
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
      
func show_puzzle(solve:bool):
   if $puzzle != null:
      $puzzle.visible = solve
      
func show_bedroom_win(found:bool):
   $"Win bedroom".visible = found
   
func show_puzzle_piece(show: bool):
   $Inventory/puzzlePiece/puzzle.visible = show
   
func get_keyPad():
   return $Keypad
   
func get_puzzle():
   return $puzzle

func toggle_flashlight():
   get_flashlight.emit()
   return $Inventory/FlashLight_claim
   

