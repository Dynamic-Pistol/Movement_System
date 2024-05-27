extends Node
class_name MovementModifier

var move_data := {}
var gravity := ProjectSettings.get_setting("physics/3d/default_gravity") as float

func get_move_data(data: Dictionary) -> void:
	move_data = data

func move(_velocity: Vector3) -> Vector3:
	return Vector3.ZERO
