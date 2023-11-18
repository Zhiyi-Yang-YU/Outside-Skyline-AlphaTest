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
	quitGame()


#method
func pauseGame() -> void:
	if Input.is_action_just_pressed("ui_pause"):
		isPauseToggled = not isPauseToggled
		togglePauseUI(isPauseToggled)
		print("pause game")



func quitGame() -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		get_tree().quit()



#helper
func togglePauseUI(toggle: bool) -> void:
	if toggle:
		blackBackground.visible = true
		gamePause.visible = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		blackBackground.visible = false
		gamePause.visible = false
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


#signal process
func _on_game_pause_button_button_up():
	print("Exit buttom pressed")