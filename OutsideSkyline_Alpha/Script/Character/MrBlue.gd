extends Node3D

@onready var mrBlue: Node3D = get_parent()


func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _unhandled_input(event: InputEvent) -> void:
	if mrBlue.canInteractNow and event.is_action_pressed("ui_interact"):
		DialogBox._showDialogBox(DramaScript._0_002)


func _on_can_interact_area_body_entered(body: Node3D) -> void:
	pass # Replace with function body.


func _on_can_interact_area_body_exited(body: Node3D) -> void:
	pass # Replace with function body.
