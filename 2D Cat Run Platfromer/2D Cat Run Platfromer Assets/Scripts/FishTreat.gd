extends Area2D
# Gives the player a point for each fish collected & makes the fish dissapear at the same time.
func _on_FishTreat_body_entered(body):
	Player.score += 1
	queue_free()
	pass
