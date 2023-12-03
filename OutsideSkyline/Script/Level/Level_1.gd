extends Control


func _ready() -> void:
	# 连接对话框结束信号
	DialogBox._showDialogBox(DramaScript._1_001)
	DialogBox.SIGDialogFinish.connect(_level_1_finish)


func _level_1_finish() -> void:
	# 对话结束，切换到游戏关卡
	SystemHQ.changeLevel(LevelReference._LEVEL_2)


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()
