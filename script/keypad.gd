extends Control
const passWords = "1724"

@onready var label = $VBoxContainer/MarginContainer/Label
@onready var status = $VBoxContainer/MarginContainer/Status
@onready var red = Color(1,0,0)
@onready var ui = $"/root/Ui"
@export var targetScene: String
var password_found = false

func _ready():
	label.text = ""
	ui.visible = false

func key_press(digit):
	if len(label.text) < 4:
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
		status.add_theme_color_override("font_color", Color(0, 1, 0))
		status.text = "Correct"
		await get_tree().create_timer(1.5).timeout
		password_found = true 
		hide()
		var targetScenePath = "res://scene/"+targetScene+".tscn"
		get_tree().change_scene_to_file(targetScenePath)
	else:
		status.add_theme_color_override("font_color", Color(1, 0, 0))
		status.text = "Try again"
		
func is_password_found():
	return password_found
	
func _on_button_pressed():
	hide()
	label.text = ""
