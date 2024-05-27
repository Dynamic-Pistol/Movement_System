extends CrouchBase
class_name CrouchToggle

func toggle_crouch(new_value) -> void:
	if new_value:
		crouch()
	else:
		uncrouch()
