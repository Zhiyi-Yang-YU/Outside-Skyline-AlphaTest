extends Node3D

@export var player: CharacterBody3D
@export var friend: Node3D
@export var helloWorldFollower: Node3D
@export var targetMark_event5: Node3D
@export var targetMark_event9: Node3D

var eventNum: int = 0

var _is_event_01_done: bool = false
var _is_event_02_done: bool = false
var _is_event_03_done: bool = false
var _is_event_04_done: bool = false
var _is_event_05_done: bool = false
var _is_event_06_done: bool = false
var _is_event_07_done: bool = false
var _is_event_08_done: bool = false
var _is_event_09_done: bool = false
var _is_event_10_done: bool = false


func _ready() -> void:
	player.canSwitchReality = false
	DialogBox.SIGDialogFinish.connect(_eventNumCountUp)
	targetMark_event5.SIGTargetMarkExpired.connect(_eventNumCountUp)
	targetMark_event9.SIGTargetMarkExpired.connect(_eventNumCountUp)
	_eventList(0)


func _process(delta: float) -> void:
	_eventManager()


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
				friend.setAsTarget(true)
				_eventNumCountUp()

				_is_event_02_done = false
				_is_event_03_done = true

		# 一旦进入回忆状态就等会再回到现实
		# 第二阶段：回忆状态和NPC对话
		3:
			if Input.is_action_pressed("ui_interact") and friend.canInteractNow:
				DialogBox._showDialogBox(DramaScript._TEST_MESSAGE)
				friend.isInteractable = false
				friend.setAsTarget(false)

				_is_event_03_done = false
				_is_event_04_done = true
		
		4:
			helloWorldFollower.setAsTarget(true)
			if Input.is_action_pressed("ui_interact") and helloWorldFollower.canInteractNow:
				DialogBox._showDialogBox(DramaScript._TEST_MESSAGE)
				helloWorldFollower.isInteractable = false
				helloWorldFollower.setAsTarget(false)

				_is_event_04_done = false
				_is_event_05_done = true

		5:
			targetMark_event5.setCanShowTargetMark(true)

			_is_event_05_done = false
			_is_event_06_done = true

		6:
			DialogBox._showDialogBox(DramaScript._TEST_MESSAGE)

			_is_event_06_done = false
			_is_event_07_done = true

		7:
			player.canSwitchReality = true
			_eventNumCountUp()

			_is_event_07_done = false
			_is_event_08_done = true
			
		8:
			if player.isInReality == true:
				player.canSwitchReality = false

				DialogBox._showDialogBox(DramaScript._TEST_MESSAGE)

				_is_event_08_done = false
				_is_event_09_done = true
		
		9:
			targetMark_event9.setCanShowTargetMark(true)

			_is_event_09_done = false
			_is_event_10_done = true

		10: 
			SystemHQ.changeLevel(LevelReference._FAKE_ENDING)

			_is_event_10_done = false


func _eventManager() -> void:
	if eventNum == 1 and _is_event_01_done:
		_eventList(1)

	if eventNum == 2 and _is_event_02_done:
		_eventList(2)

	if eventNum == 3 and _is_event_03_done:
		_eventList(3)

	if eventNum == 4 and _is_event_04_done:
		_eventList(4)

	if eventNum == 5 and _is_event_05_done:
		_eventList(5)

	if eventNum == 6 and _is_event_06_done:
		_eventList(6)

	if eventNum == 7 and _is_event_07_done:
		_eventList(7)

	if eventNum == 8 and _is_event_08_done:
		_eventList(8)

	if eventNum == 9 and _is_event_09_done:
		_eventList(9)
		
	if eventNum == 10 and _is_event_10_done:
		_eventList(10)


func _eventNumCountUp() -> void:
	eventNum += 1
