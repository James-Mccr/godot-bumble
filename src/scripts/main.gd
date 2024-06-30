extends Node

func _ready():
	$Bumble._ready()
	$Flowe.spawn()
	
func _process(delta):
	$Ui/Label.text = str(int($Timer.time_left))

func _on_timer_timeout():
	gameover()

func gameover():
	$Hud.display($Bumble.flowes)
	
func _on_hud_new_game():
	_ready()
	$Timer.start()
