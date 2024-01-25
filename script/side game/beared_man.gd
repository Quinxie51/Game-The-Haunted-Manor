extends CharacterBody2D
@onready var animated_sprite = $AnimatedSprite2D
@export var gravity = 400
var direction = 0
var active = true

func _physics_process(delta):
	if is_on_floor() == false:
		velocity.y += gravity*delta
		if velocity.y > 500:
			velocity.y = 500
	
	
func update_animation(direction):
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		
