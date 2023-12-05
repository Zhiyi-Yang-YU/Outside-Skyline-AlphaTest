extends Node3D

@export var player: CharacterBody3D
@export var turnOffGame: Node3D

var eventNum: int = 0

var _is_event_01_done: bool = false
var _is_event_02_done: bool = false
var _is_event_03_done: bool = false


func _ready() -> void:
	player.canSwitchReality = false

	DialogBox.SIGDialogFinish.connect(_eventNumCountUp)
	
	_eventList(0)


func _process(delta: float) -> void:
	_eventManager()


func _eventManager() -> void:
	if eventNum == 1 and _is_event_01_done:
		_eventList(1)

	if eventNum == 2 and _is_event_02_done:
		_eventList(2)

	if eventNum == 3 and _is_event_03_done:
		_eventList(3)


func _eventList(event_index: int) -> void:
	match event_index:
		0:
			DialogBox._showDialogBox(DramaScript._3_001)
			
			_is_event_01_done = true
		1:
			turnOffGame.setAsTarget(true)
			_eventNumCountUp()

			_is_event_01_done = false
			_is_event_02_done = true
		2:
			if Input.is_action_pressed("ui_interact") and turnOffGame.canInteractNow:
				DialogBox._showDialogBox(DramaScript._3_002)
				turnOffGame.setAsTarget(false)

				_is_event_02_done = false
				_is_event_03_done = true
		3:
			SystemHQ.changeLevel(LevelReference._LEVEL_REAL_ENDING)
			
			_is_event_03_done = false
		

func _eventNumCountUp() -> void:
	eventNum += 1