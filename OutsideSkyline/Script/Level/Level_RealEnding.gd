extends Control


func _ready() -> void:
	DialogBox._showDialogBox(DramaScript._REAL_ENDING)
	DialogBox.SIGDialogFinish.connect(_level_realEnding_finish)


func _level_realEnding_finish() -> void:
	SystemHQ.quitGame()


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()
