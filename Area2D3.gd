extends Area2D

var score = 0




func _on_body_entered(body):
	if body is Player:
		GameState.addScore()
