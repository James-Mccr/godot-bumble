extends Node2D

func _ready():
	hide()
	
func move(pos:Vector2):
	show()
	position = pos

func _on_bumble_move(pos):
	move(pos)
