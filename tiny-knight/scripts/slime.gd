extends CharacterBody2D

const SPEED = 60
var direction = 1

@onready var right: RayCast2D = $right
@onready var left: RayCast2D = $left
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _process(delta: float) -> void:	
	if right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	elif left.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
		
	position.x += delta * direction * SPEED
	
