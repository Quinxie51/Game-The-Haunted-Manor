extends ColorRect

@export var dialogPath = "res://Dialog2.json"
@export var textSpeed = 0.05

var dialog
var phraseNum : int = 0
var finished :bool = false



func _ready():
   $Timer.wait_time = textSpeed
   dialog = getDialog()
   assert(dialog, "Dialog not found!")
   nextPhrase()
   
func _process(delta):
   if Input.is_action_just_pressed("Action") or Input.is_action_just_pressed("ActionSpace"):
      if finished:
         nextPhrase()
      else: 
         $Text.visible_characters = len($Text.text)
   
func getDialog() -> Array:
   var f = FileAccess.open(dialogPath, FileAccess.READ)
   assert(f.file_exists(dialogPath),"File path does not exist")
   
   f.open(dialogPath, f.READ)
   var json = f.get_as_text()
   var json_object = JSON.new()
   json_object.parse(json)
   var output = json_object.data
   
   if typeof(output) == TYPE_ARRAY:
      return output
   else:
      return []
      
func nextPhrase():
   if phraseNum >= len(dialog):
      queue_free()
      return
   finished = false
   
   $Text.bbcode_text = dialog[phraseNum]["Text"]
   $Text.visible_characters = 0

   while $Text.visible_characters < len($Text.text):
      $Text.visible_characters += 1
      $Timer.start()
      await $Timer.timeout
      
   finished = true
   phraseNum += 1
   return

func _on_skip_pressed():
   get_tree().change_scene_to_file("res://scene/main_game.tscn")


func _on_credit_pressed():
   $"../../../Credit scene".visible = true



func _on_restart_pressed():
   pass # Replace with function body.
