extends Node
class_name CrouchBase

@export
var head_check: ShapeCast3D
var is_crouched := false
@onready
var crouch_player := get_child(0) as AnimationPlayer

func crouch() -> void:
	if is_crouched:
		return
	crouch_player.play(&"Crouch")
	is_crouched = true

func uncrouch() -> void:
	while head_check.is_colliding():
		await get_tree().physics_frame
	crouch_player.play(&"Crouch", -1, -1, true)
	is_crouched = false
