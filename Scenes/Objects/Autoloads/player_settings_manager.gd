extends Node

var sensitivity := 0.5
signal on_pause(is_paused)

func _ready() -> void:
	process_mode = Node.PROCESS_MODE_ALWAYS
	toggle_cursor_mode(true)

func _input(event: InputEvent) -> void:
	if event.is_action_pressed(&'Pause'):
		get_tree().paused = not get_tree().paused
		on_pause.emit(get_tree().paused)
		toggle_cursor_mode(not get_tree().paused)

func toggle_cursor_mode(new_value: bool) -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED if new_value else Input.MOUSE_MODE_VISIBLE
