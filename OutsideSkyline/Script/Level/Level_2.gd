extends Node3D

@onready var player: CharacterBody3D = $"../Player"

var eventNum: int = 0

var _is_event_01_done: bool = false
var _is_event_02_done: bool = false
var _is_event_03_done: bool = false
var _is_event_04_done: bool = false
var _is_event_05_done: bool = false
var _is_event_06_done: bool = false
var _is_event_07_done: bool = false
var _is_event_08_done: bool = false


func _ready() -> void:
	player.canSwitchReality = false
	DialogBox.SIGDialogFinish.connect(_eventNumCountUp)
	_eventList(0)


func _process(delta: float) -> void:
	_eventManager()
	# print(player.isInReality)
	# print(player.canSwitchReality)


func _eventManager() -> void:
	if eventNum == 1 and _is_event_01_done:
		_eventList(1)

	if eventNum == 2 and _is_event_02_done:
		_eventList(2)

	if eventNum == 3 and _is_event_03_done:
		_eventList(3)


func _eventList(event_index: int) -> void:
	match event_index:
		# 第一阶段：先进入回忆状态再说
		0:
			DialogBox._showDialogBox(DramaScript._TEST_MESSAGE)

			_is_event_01_done = true

		1:
			player.canSwitchReality = true
			_eventNumCountUp()

			_is_event_01_done = false
			_is_event_02_done = true

		2:
			if player.isInReality == false:
				player.canSwitchReality = false
				_eventNumCountUp()

				_is_event_02_done = false
				_is_event_03_done = true

		# 一旦进入回忆状态就等会再回到现实
		# 第二阶段：回忆状态和NPC对话
		3:
			SystemHQ.quitGame()


func _eventNumCountUp() -> void:
	eventNum += 1