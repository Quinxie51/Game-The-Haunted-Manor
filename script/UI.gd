extends CanvasLayer

signal get_flashlight
signal active_puzzle
@onready var flash_slot = $Inventory/FlashLight_claim
@onready var puzzle_slot =$Inventory/puzzlePiece
var puzzle_found = false

func _ready():
   flash_slot.power_flashlight.connect(toggle_flashlight)
   puzzle_slot.power_puzzle.connect(_on_puzzle_slot_pressed)


func _process(delta):
   var current_scene = get_tree().get_current_scene()
   if current_scene != null:
      var current_scene_name = get_tree().get_current_scene().name
      var exclude_scenes = ["Main game", "level 1", "wolf world", "wolf talk", "woman talk", "both talk", "Intro scene", "Outro scene"]
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
   $"Win_bedroom".visible = found
   
func show_puzzle_piece(show: bool):
   $Inventory/puzzlePiece/puzzle.visible = show
   
func get_keyPad():
   return $Keypad
   
func get_puzzle():
   return $puzzle

func _on_puzzle_slot_pressed():
   if $"Win_bedroom".is_puzzle_claimed:
      AudioPlayer.play_sound("press")
      active_puzzle.emit()
      puzzle_found = true
   
   
func toggle_flashlight():
   if $Win_kitchen.is_flashlight_claimed:
      AudioPlayer.play_sound("press")
      get_flashlight.emit()
      return $Inventory/FlashLight_claim
      

