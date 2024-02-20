extends Area2D
@onready var gamemanager = %Gamemanager
@onready var bubble = $Bubble

func _on_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	
	
	if (body.name == "CharacterBody2D"):
		
		bubble.play()
		gamemanager.addPoint()
		
		



func _on_bubble_finished():
	queue_free()
