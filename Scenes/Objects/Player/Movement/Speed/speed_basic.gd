extends SpeedModifier

@export_range(1, 20, 0.5)
var speed: float = 6

func get_speed() -> float:
	return speed
