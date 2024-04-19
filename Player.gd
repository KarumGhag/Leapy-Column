extends CharacterBody2D
class_name Player

@onready var label = $Label
@onready var me = $Icon

const JUMP_VELOCITY = -350.0
var jumping : bool
var gravity = 1000
var canMove = true
var misses = 0


func _physics_process(delta):
	if canMove:
		velocity.y += gravity * delta
		if Input.is_action_just_pressed("Jump"):
			velocity.y = JUMP_VELOCITY
			jumping = true
		move_and_slide()


func kill():
	misses += 1
	label.text = "Misses: " + str(misses)
	

	
