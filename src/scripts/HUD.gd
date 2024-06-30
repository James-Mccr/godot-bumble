extends CanvasLayer

signal new_game

func display(score:int):
	show()
	$Label.text = "You collected " + str(score) + " flowes"

func _on_button_pressed():
	hide()
	new_game.emit()
