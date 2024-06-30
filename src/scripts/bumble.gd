extends CharacterBody2D

const SPEED = 200.0
var target = Vector2.ZERO
var flowes = 0

signal move(pos:Vector2)

func _ready():
	var viewport = get_viewport()
	position = Vector2(viewport.size.x/2, viewport.size.y/2)
	target = position
	velocity = Vector2.ZERO
	flowes = 0

func _physics_process(delta):
	if Input.is_action_pressed("left_click"):
		target = get_global_mouse_position()
		move.emit(target)
	velocity = velocity.move_toward(target-position, SPEED*delta)
	rotation = velocity.angle()
	move_and_slide()
	
func pickup_flowe():
	flowes += 1

func _on_visible_on_screen_notifier_2d_screen_exited():
	var viewport = get_viewport_rect()
	if (position.x < 0 || position.x > viewport.size.x):
		velocity.x *= -1
	else:
		velocity.y *= -1
