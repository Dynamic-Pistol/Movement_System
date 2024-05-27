extends Node

@export
var move_body : CharacterBody3D
var move_modifiers : Array[MovementModifier]

func _ready() -> void:
	for child in get_children():
		if child is MovementModifier:
			move_modifiers.append(child)

func _physics_process(_delta: float) -> void:
	for mod in move_modifiers:
		mod.get_move_data(get_body_data())
		move_body.velocity = mod.move(move_body.velocity)
	move_body.move_and_slide()

func get_body_data() -> Dictionary:
	return {
		"grounded": move_body.is_on_floor(),
		"delta": get_physics_process_delta_time(),
		"basis": move_body.basis,
	}
