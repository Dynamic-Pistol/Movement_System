extends MovementModifier
class_name MoveHorizontal

@export
var speed_mod: SpeedModifier
@export_range(1, 10, 0.2)
var acceleration : float = 1.2
@export_range(1, 10, 0.2)
var deceleration : float = 0.8
var move_input : Vector2

func move(velocity: Vector3) -> Vector3:
	var speed := speed_mod.get_speed()
	if not move_data["grounded"]:
		return velocity
	var move_dir = (move_data["basis"] * Vector3(move_input.x, 0, move_input.y)).normalized() * speed
	if move_dir:
		velocity.x = move_toward(velocity.x, move_dir.x, acceleration)
		velocity.z = move_toward(velocity.z, move_dir.z, acceleration)
	else:
		velocity.x = move_toward(velocity.x, 0, deceleration)
		velocity.z = move_toward(velocity.z, 0, deceleration)
	return velocity

func get_move_input(input_value) -> void:
	move_input = input_value
