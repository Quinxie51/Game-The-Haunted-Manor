extends Node
var door = preload("res://asset/music/Door open sound effect.mp3")
var wolf = preload("res://asset/music/wolf sound effect.mp3")
var correct = preload("res://asset/music/correct.mp3")
var wrong = preload("res://asset/music/wrong.mp3")

func play_sound(sound: String):
	var stream = null
	if sound == "door":
		stream = door
	elif sound == "wolf":
		stream = wolf
	else:
		print("Invalid")
		return 
	var audio = AudioStreamPlayer.new()
	audio.stream = stream
	audio.name = "SFX"
	add_child(audio)
	audio.play()
	
	await audio.finished
	audio.queue_free()
