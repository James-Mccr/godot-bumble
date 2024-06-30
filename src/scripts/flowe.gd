extends Area2D

var offset = 0.0

func _ready():
	offset = $Sprite2D.get_rect().size.x/2
	spawn();

func _on_body_entered(body):
	body.pickup_flowe()
	spawn()

func spawn():
	position.x = randf_range(0+offset, get_viewport_rect().size.x-offset)
	position.y = randf_range(0+offset, get_viewport_rect().size.y-offset)
	
