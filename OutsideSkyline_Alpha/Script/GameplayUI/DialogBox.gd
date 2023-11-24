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
	pass
	_hideDialogBox()
	dialogTimer.start()


func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		dialogTimer.stop()
		if curr + 1 < dialogsArray.size():
			_showDialog(curr + 1)
		else:
			_hideDialogBox()
		get_viewport().set_input_as_handled()
		dialogTimer.start()


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


# Signals
func _on_dialog_timer_timeout() -> void:
	if curr + 1 < dialogsArray.size():
		_showDialog(curr + 1)
	else:
		_hideDialogBox()
		dialogTimer.stop()  # 停止Timer
