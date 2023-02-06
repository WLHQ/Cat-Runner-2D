extends KinematicBody2D
# Variables for Velocity, Gravity, & Speed are below.
export var gravity: = 400.0
export var speed: = Vector2(300.0, 300.0)
var velocity: = Vector2(100, 0)
# Physics function below
func _physics_process(delta):
	velocity.y += gravity * delta
	move_and_slide(velocity, Vector2(0, -1))
	
	if is_on_wall():
		velocity.x *= -1
# Reloads the scene when called.
func _on_PlayerDead_body_entered(body):
	get_tree().reload_current_scene()
	pass # Replace with function body.
# Makes the enemy dissapear from the screen when player enters the damage hitbox for the enemy. 
func _on_EnemyDead_body_entered(body):
	queue_free()
	pass # Replace with function body.
