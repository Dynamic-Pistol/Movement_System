extends SpeedModifier
class_name SpeedCrouch

@export
var speed_crouch_loss: float
@export
var speed_node: SpeedModifier
@export
var crouch_node: CrouchBase

func get_speed() -> float:
	if crouch_node.is_crouched:
		return speed_node.get_speed() - speed_crouch_loss
	return speed_node.get_speed()
