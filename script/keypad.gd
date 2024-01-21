extends Control
const passWords = "123"

@onready var label = $VBoxContainer/MarginContainer/Label
@onready var status = $VBoxContainer/MarginContainer/Status

func _ready():
	label.text = ""

func key_press(digit):
	if len(label.text) < 3:
		label.text += str(digit)
		
		

func _on_button_1_pressed():
	key_press(1)


func _on_button_2_pressed():
	key_press(2)


func _on_button_3_pressed():
	key_press(3)


func _on_button_4_pressed():
	key_press(4)


func _on_button_5_pressed():
	key_press(5)


func _on_button_6_pressed():
	key_press(6)


func _on_button_7_pressed():
	key_press(7)

func _on_button_8_pressed():
	key_press(8)


func _on_button_9_pressed():
	key_press(9)


func _on_button_c_pressed():
	label.text = ""

func _on_button_0_pressed():
	key_press(0)


func _on_ok_pressed():
	if label.text == passWords:
		status.text = "Correct"
		#status.text.add_theme_color_override("green")
	else:
		status.text = "Try again"
		#status.text.add_theme_color_override("red")


