extends Control

@onready var player_answer = $LineEdit
@onready var label = $Label
var correct_answer = false
var answer = "NightFang"
@onready var shader = $".."

func _on_button_pressed():
   if player_answer.text == answer:
      label.text = "Correct"
      label.add_theme_color_override("font_color", Color(0, 1, 0))
      correct_answer = true
      hide()
      shader.hide()
   else:
       label.text = "Try again"
       label.add_theme_color_override("font_color", Color(1, 0, 0))
      
   $Timer.start()
      
func _on_timer_timeout():
   label.add_theme_color_override("font_color", Color(1, 1, 1))
   label.text = "Who is the guardian of the shadows, 
   feared by generations and bound by an ancient pact?"
   $Timer.stop()
   
func _is_corrected():
   return correct_answer
