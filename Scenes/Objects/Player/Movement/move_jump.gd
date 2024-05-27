extends MovementModifier

@export_range(1, 10)
var jump_force := 1.0
var jump_input := false
signal jumped

func move(velocity: Vector3) -> Vector3:
	if move_data["grounded"] and jump_input:
		velocity.y = jump_force
		jump_input = false
		jumped.emit()
	return velocity

func set_jump_input() -> void:
	if not move_data["grounded"]:
		return
	jump_input = true
