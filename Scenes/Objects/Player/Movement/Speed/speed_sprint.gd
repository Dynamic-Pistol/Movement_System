extends SpeedModifier

@export_range(1, 20, 0.5)
var walk_speed : float = 6
@export_range(1, 20, 0.5)
var run_speed : float = 12

var sprint_input := false

func get_speed() -> float:
	return run_speed if sprint_input  else walk_speed

func get_sprint_input(value: bool) -> void:
	sprint_input = value
