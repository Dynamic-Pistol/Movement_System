extends Node

@export
var input_notifs : Array[InputNotifier]

func _ready() -> void:
	for child in get_children():
		if child is InputNotifier:
			input_notifs.append(child)

func _input(event: InputEvent) -> void:
	for input_notif in input_notifs:
		input_notif.on_input(event)
