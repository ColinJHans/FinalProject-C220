extends KinematicBody2D

var velocity = Vector2.ZERO

var down = 10

export var gravity = Vector2(0,30)

func _ready():
	pass # Replace with function body.



func _physics_process(_delta):
	position.x -= 1
	position.y += down


func _on_Area2D_body_entered(body):
	if body.name == "Ground":
		down = 0
	if body.name == "Player":
		body.die()



func _on_Area2D_body_exited(body):
	if body.name == "Ground":
		down = 10
