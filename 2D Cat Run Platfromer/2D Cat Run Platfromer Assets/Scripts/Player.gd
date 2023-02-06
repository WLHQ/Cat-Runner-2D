extends Actor

var score = 0
# Gets the input from the player specifed in the function below.
func get_input():
	if Input.is_action_pressed("move_right"):
		velocity.x += 1.0
	elif Input.is_action_pressed("move_left"):
		velocity.x -= 1.0
	else:
		velocity.x = 0
	if Input.is_action_pressed("jump") and is_on_wall():
		velocity.y -= 14.0
# Physics function
func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
# Prints to the console everytime the player collects a fish.
func _on_FishTreat_body_entered(body):
	score += 1
	print(score)
	pass
# Runs when the player reaches the endpoint for the dev level. Leads to Level 1.
func _on_Endpoint_body_entered(body):
	get_tree().change_scene("res://Lev-1.tscn")
# Runs when the player reaches the endpoint for Level 1. Leads to the Main Menu.
func _on_Endpoint_body_entered2(body):
	get_tree().change_scene("res://Menu.tscn")
