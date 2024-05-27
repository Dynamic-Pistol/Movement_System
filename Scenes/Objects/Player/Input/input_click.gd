extends InputNotifier

signal on_click

func on_input(event: InputEvent) -> void:
	if event.is_action_pressed(action_name):
		on_click.emit()
