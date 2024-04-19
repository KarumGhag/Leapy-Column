extends CharacterBody2D
class_name Pipes

const SPEED = 300.0
var moving : bool

@export var world : Node2D
var canSpawn : bool = true


func _physics_process(delta):
	if !canSpawn:
		queue_free()
		
	if moving:
		velocity.x = SPEED * -1

	move_and_slide()

func _on_tree_entered():
	var rng = RandomNumberGenerator.new()
	position.y = rng.randf_range(160, 500.0)
	print(position.y)
	moving = true


func _on_area_2d_2_body_entered(body):
	if body is Player:
		body.kill()


func _on_area_2d_body_entered(body):
	if body is Player:
		body.kill()

