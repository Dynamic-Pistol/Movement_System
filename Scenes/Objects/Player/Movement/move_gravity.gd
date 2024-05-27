extends MovementModifier



func move(velocity: Vector3) -> Vector3:
	if not move_data["grounded"]:
		velocity.y -= gravity * move_data["delta"]
	return velocity
