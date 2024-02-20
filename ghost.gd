extends CharacterBody2D


const speed = 100.0
var player_position
var target_position
@onready var player = $"../CharacterBody2D"

@onready var gamemanager = %Gamemanager

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	
	player_position = player.position
	target_position = (player_position - position).normalized()
	
	if position.distance_to(player_position) > 3:
		velocity = Vector2(target_position * speed) 
		move_and_slide()
		

		
@onready var attack = $Attack


func _on_area_2d_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	if (body.name == "CharacterBody2D"):
		
		attack.play()
		gamemanager.subPoint()
		gamemanager.game_end()
