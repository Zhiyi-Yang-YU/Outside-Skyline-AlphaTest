class_name GameplayUI_Manager
extends Node3D

@onready var blackBackground: ColorRect = $Control_Game/BlackBackground
@onready var gamePause: BoxContainer = $Control_Game/GamePause

var isPauseToggled: bool = false

# TODO: 实现暂停
func _ready() -> void:
	togglePauseUI(false)


func _process(delta: float) -> void:
	pauseGame()


#method
func pauseGame() -> void:
	if Input.is_action_just_pressed("ui_pause"):
		isPauseToggled = not isPauseToggled
		togglePauseUI(isPauseToggled)


#helper
func togglePauseUI(toggle: bool) -> void:
	if toggle:
		blackBackground.visible = true
		gamePause.visible = true
		#TODO: 给我停下来啊！！！
		# get_tree().paused = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		blackBackground.visible = false
		gamePause.visible = false
		#TODO: 给我停下来啊！！！
		# get_tree().paused = false
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


#signal process
func _on_game_continue_button_button_up():
	isPauseToggled = false
	togglePauseUI(false)

func _on_game_pause_button_button_up():
	SystemHQ.quitGame()
