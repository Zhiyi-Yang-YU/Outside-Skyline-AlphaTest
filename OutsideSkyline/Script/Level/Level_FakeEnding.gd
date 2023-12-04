extends Control


func _ready() -> void:
	DialogBox._showDialogBox(DramaScript._FAKE_ENDING)
	# 连接对话框结束信号
	DialogBox.SIGDialogFinish.connect(_level_fakeEnding_finish)


func _level_fakeEnding_finish() -> void:
	SystemHQ.quitGame()


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()
