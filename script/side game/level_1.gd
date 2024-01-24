extends Node2D
#@onready var startPoint = $StartPoint
#@onready var exit = $Exit
#var player = null
#@export var next_level: PackedScene = null
#@onready var deadzone = $Deadzone
#var time_node = null
#@export var time_level = 5
#var time_left 
#var win = false
#@onready var hud = $"UI layer/HUD"
#@export var is_final: bool = false
#@onready var final_level = $"UI layer"



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("quit"):
		queue_free()
	elif Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
		
#func _ready():
	#player = get_tree().get_first_node_in_group("player")
	#if player != null:
		#player.global_position = startPoint.get_spawn_pos()
	#var traps = get_tree().get_nodes_in_group("traps")
	#for trap in traps:
		#trap.touch_player.connect(_on_trap_touch_player)
		#
	#exit.body_entered.connect(on_body_enter)
	#deadzone.body_entered.connect(_on_area_2d_body_entered)
	#
	#time_left = time_level
	#hud.set_time_label(time_left)
	#
	#time_node = Timer.new()
	#time_node.name = "Level Timer"
	#time_node.wait_time = 1
	#time_node.timeout.connect(on_time_out)
	#add_child(time_node)
	#time_node.start()
	#
#func on_time_out():
	#if win == false:
		#time_left -= 1
		#hud.set_time_label(time_left)
		#if time_left < 0:
			#AudioPlayer.play_sound("hurt")
			#reset_game()
			#time_left = time_level
			#hud.set_time_label(time_left)
##
#func _on_area_2d_body_entered(body):
	#reset_game()
	#AudioPlayer.play_sound("hurt")
	#
#func _on_trap_touch_player():
	#reset_game()
	#AudioPlayer.play_sound("hurt")
	#
#func reset_game():
	#player.velocity = Vector2.ZERO
	#player.global_position = startPoint.get_spawn_pos()
	#
#func on_body_enter(body):
	#if is_final || next_level != null:
		#exit.animate()
		#player.active = false
		#win = true
		#await get_tree().create_timer(1.5).timeout
		#if is_final:
			#final_level.show_win_screen(true)
		#else:
			#get_tree().change_scene_to_packed(next_level)
#
	#
	



func _on_deathzone_body_entered(body):
	pass # Replace with function body.
