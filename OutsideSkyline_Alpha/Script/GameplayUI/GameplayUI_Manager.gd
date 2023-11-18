class_name GameplayUI_Manager
extends Node3D

@onready var blackBackground: ColorRect 	= $Control_Game/BlackBackground
@onready var gamePauseMenu: BoxContainer 	= $Control_Game/GamePause
@onready var gameOptionMenu: BoxContainer 	= $Control_Game/GameOption

var isPauseToggled: bool = false
var isOptionToggled: bool = false

# TODO: 实现暂停
func _ready() -> void:
	togglePauseUI(false)
	toggleOptionUI(false)


func _process(delta: float) -> void:
	pass



#helper
func togglePauseUI(toggle: bool) -> void:
	if toggle:
		blackBackground.visible = true
		gamePauseMenu.visible = true
		#TODO: 给我停下来啊！！！
		get_tree().paused = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		blackBackground.visible = false
		gamePauseMenu.visible = false
		#TODO: 给我停下来啊！！！
		get_tree().paused = false
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func toggleOptionUI(toggle: bool) -> void:
	if toggle:
#		blackBackground.visible = true
		gameOptionMenu.visible = true
#		gamePauseMenu.visible = false
#		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
#		blackBackground.visible = false
		gameOptionMenu.visible = false
#		gamePauseMenu.visible = true
#		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)




