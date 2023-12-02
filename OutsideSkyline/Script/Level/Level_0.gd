extends Node3D

@onready var player: CharacterBody3D = $"../Player"
@onready var mrBlue: Node3D = $"../MrBlue"

var nextLevelScene: String = "res://OutsideSkyline/Scene/Level/Level_0.tscn"

var eventNum: int = 0

var _is_event_01_done: bool = false
var _is_event_02_done: bool = false
var _is_event_03_done: bool = false


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
			mrBlue.hide()
			mrBlue.setAsTarget(false)
			DialogBox._showDialogBox(DramaScript._0_001)
			_is_event_01_done = true
		1:
			mrBlue.show()
			mrBlue.setAsTarget(true)
			_eventNumCountUp()
			_is_event_01_done = false
			_is_event_02_done = true
		2:
			if Input.is_action_pressed("ui_interact") and mrBlue.canInteractNow:
				DialogBox._showDialogBox(DramaScript._0_002)
				mrBlue.isInteractable = false
				mrBlue.setAsTarget(false)
				_is_event_02_done = false
				_is_event_03_done = true
		3:
			mrBlue.queue_free()
			get_tree().change_scene_to_file(nextLevelScene)
			_is_event_03_done = false


func _eventNumCountUp() -> void:
	eventNum += 1


func _ready() -> void:
	DialogBox.SIGDialogFinish.connect(_eventNumCountUp)
	_eventList(0)


func _process(delta: float) -> void:
	_eventManager()
