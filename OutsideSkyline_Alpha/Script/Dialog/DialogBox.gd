extends CanvasLayer

const COLOR_RED: String = "#ba5455"
const COLOR_BLUE: String = "#73aed3"
const COLOR_YELLOW: String = "#c4bf4d"

const FRIENDLY: String = COLOR_BLUE
const NEUTRAL: String = COLOR_YELLOW
const ENEMY: String = COLOR_RED

@onready var dialogContent: HBoxContainer = $DialogContent
@onready var speaker: Label = $DialogContent/Speaker
@onready var content: Label = $DialogContent/Content
@onready var dialogTimer: Timer = $DialogTimer

var dialogsArray: Array = []
var curr: int = 0


func _ready() -> void:
	_hideDialogBox()
	_showDialogBox([
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "Welcome to Alpha Test, This is developer speaking"},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "Just want to show you our reconstructed dialog system"},
		{speaker = "Player: ", speakerCamp = FRIENDLY, text = "sure"},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "I reference the Call of Duty 19's dialog Art Style"},
		{speaker = "Developer: ", speakerCamp = ENEMY, text = "When speaker is red, enemies are speaking"},
		{speaker = "Developer: ", speakerCamp = ENEMY, text = "Don't attack me, this is only a demo"},
		{speaker = "Developer: ", speakerCamp = FRIENDLY, text = "When speaker is blue, friendlys are speaking"},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "When speaker is yellow,the speaker belongs to neutral camps"},
		{speaker = "Player: ", speakerCamp = FRIENDLY, text = "Nice"},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "Don't ask me why do we have this setting"},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "Just want to try, I don't even know how to use this system..."},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "...in a walking sims"},
		{speaker = "Developer: ", speakerCamp = NEUTRAL, text = "talk to Mr.Blue, He has something want to show you"},
	])

	dialogTimer.start()


func _unhandled_input(event: InputEvent) -> void:
	# if event.is_action_pressed("ui_accept"):
	# 	dialogTimer.stop()
	# 	if curr + 1 < dialogsArray.size():
	# 		_showDialog(curr + 1)
	# 	else:
	# 		_hideDialogBox()
	# 	get_viewport().set_input_as_handled()
	# 	dialogTimer.start()
	pass


func _hideDialogBox() -> void:
	dialogContent.hide()


func _showDialogBox(_dialogsArray: Array) -> void:
	dialogsArray = _dialogsArray
	dialogContent.show()
	_showDialog(0)


func _showDialog(index: int) -> void:
	curr = index
	speaker.text = dialogsArray[curr].speaker
	_speakerColorSetUp(dialogsArray[curr].speakerCamp)
	content.text = dialogsArray[curr].text
	

# Helpers
func _speakerColorSetUp(hex_color: String) -> void:
	speaker.label_settings.set_font_color(Color(hex_color))


func load_dialogs_from_json(filePath: String) -> Array:
	# TODO: 实现从json文件里读取对话
	return []


# Signals
func _on_dialog_timer_timeout() -> void:
	if curr + 1 < dialogsArray.size():
		_showDialog(curr + 1)
	else:
		_hideDialogBox()
		dialogTimer.stop() # 停止Timer
