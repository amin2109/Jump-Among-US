extends Node




@onready var label = $"../UI/Panel/Label"

@onready var player = $"../CharacterBody2D/Sprite2D"
var points = 0

func subPoint():
	if points > 0:
		points -= 1
		label.text = str(points)
	
func addPoint():

	points += 1
	label.text = str(points)
	
func game_end():
	if points == 0:
		label.text = str("Game Over")
		get_tree().paused = true
	
	
		
