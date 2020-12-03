extends Area2D

onready var global = get_node("/root/Global")

func _ready():
	pass
	
	


func _on_Area2D_body_entered(body):
	if body.name == "Player":
		if Global.level == 1:
			get_tree().change_scene("res://Scenes/Underwater_Level.tscn")
		if Global.level == 2:
			get_tree().change_scene("res://Scenes/Level3.tscn")
		if Global.level == 3:
			get_tree().change_scene("res://Scenes/Game_Over.tscn")
