extends Node

@onready
var head := get_parent() as Node3D ##The player's head, which rotates on the y axis, camera should be a child of it
@export
var player_body : CharacterBody3D ##The player's body, which rotates on the x axis 

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		var look_val := (event.relative * PlayerSettingsManager.sensitivity) as Vector2
		player_body.rotate_y(deg_to_rad(-look_val.x))
		head.rotate_x(deg_to_rad(-look_val.y))
		head.rotation_degrees.x = clamp(head.rotation_degrees.x, -89, 89)
