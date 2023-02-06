extends Label

var score = 0
# Updates the UI in the current level updating the label to reflect the players current score. 
func _on_FishTreat_body_entered(body):
	score += 1
	text = "Score: %s" % score
