extends KinematicBody2D
class_name Actor
# Variables for Velocity, Gravity, & Speed are below.
var velocity: = Vector2.ZERO
export var gravity: = 300.0
export var speed: = Vector2(300.0, 100.0)
# Physics function below
func _physics_process(delta): 
	velocity.y += gravity * delta
	velocity.y - max(velocity.y, speed.y)
	move_and_slide(velocity)
