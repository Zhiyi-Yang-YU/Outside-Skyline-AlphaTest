extends Node3D

@onready var player: CharacterBody3D = $"../Player"
@onready var mrBlue: Node3D = $"../MrBlue"

var eventNum: int = 0

var event1_check: bool = false
var event2_check: bool = false
var event3_check: bool = false


func _ready() -> void:
	mrBlue.hide()
	DialogBox._showDialogBox(DramaScript.TEST_MESSAGE)
	DialogBox.dialogueFinishedSignal.connect(_eventNumCountUp)
	event1_check = true


func _process(delta: float) -> void:
	_eventManager()


func _eventManager() -> void:
	if eventNum == 1 and event1_check:
		mrBlue.show()
		_eventNumCountUp()
		event1_check = false
		event2_check = true

	if eventNum == 2 and event2_check:
		if Input.is_action_pressed("ui_interact") and mrBlue.canInteractNow:
			DialogBox._showDialogBox(DramaScript._0_002)
			event2_check = false
			event3_check = true

	if eventNum == 3 and event3_check:
		mrBlue.queue_free()
		event3_check = false


func _eventNumCountUp() -> void:
	eventNum += 1
