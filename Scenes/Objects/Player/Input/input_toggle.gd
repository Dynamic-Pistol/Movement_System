extends InputNotifier
class_name InputToggle

signal on_toggle(value)

func on_input(event: InputEvent) -> void:
	if event.is_action_pressed(action_name):
			on_toggle.emit(true)
	if event.is_action_released(action_name):
			on_toggle.emit(false)
