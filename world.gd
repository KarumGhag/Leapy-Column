extends Node2D
class_name World

var pipes = preload("res://pipes.tscn")
@onready var timer : Timer = $Timer
@onready var pipeSpawner = $"Pipe Spawn point"

func _ready():
	timer.start()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_timer_timeout():
	var pipesInst = pipes.instantiate()
	pipesInst.position = pipeSpawner.get_global_position()
	timer.start()
	get_tree().get_root().add_child(pipesInst)


