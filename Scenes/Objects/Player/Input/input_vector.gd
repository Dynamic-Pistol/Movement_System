extends InputNotifier
class_name InputVector

signal on_vector(move_value: Vector2)
@export
var up_action: StringName
@export
var down_action: StringName
@export
var right_action: StringName
@export
var left_action: StringName

func on_input(event: InputEvent) -> void:
	for vector_action_name in get_actions_names():
		if event.is_action(vector_action_name):
			on_vector.emit(Input.get_vector(left_action, right_action, up_action, down_action))

func get_actions_names() -> Array[StringName]:
	return [up_action, down_action, right_action, left_action]
