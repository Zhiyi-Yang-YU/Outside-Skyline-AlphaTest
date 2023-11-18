extends Node
class_name SystemHQ


func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	

func _process(delta: float) -> void:
	quitGame()


func quitGame() -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		get_tree().quit()
