extends Light2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var lights = true
var light = get_node("res://Scenes/Light.tscn")
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _lights_on_or_off():
	if Global.level != 1:
		light.enabled = false
		
