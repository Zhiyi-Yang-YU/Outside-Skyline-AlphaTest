class_name GameplayUI_Manager
extends Node3D

@onready var blackBackground: ColorRect = $Control_Game/BlackBackground
@onready var gamePauseMenu: BoxContainer = $Control_Game/GamePause
@onready var gameOptionMenu: BoxContainer = $Control_Game/GameOption
@onready var gameHow2playMenu: BoxContainer = $Control_Game/GameHow2play

var isPauseToggled: bool = false
var isHow2PlayToggled: bool = false
var isOptionToggled: bool = false


func _ready() -> void:
	togglePauseUI(false)
	toggleHow2playUI(false)
	toggleOptionUI(false)


#helpers
func togglePauseUI(toggle: bool) -> void:
	##不起效
	if toggle:
		blackBackground.visible = true
		gamePauseMenu.visible = true
		# TODO: 给我停下来啊！！！
		get_tree().paused = true
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		blackBackground.visible = false
		gamePauseMenu.visible = false
		# TODO: 给我停下来啊！！！
		get_tree().paused = false
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func toggleHow2playUI(toggle: bool) -> void:
	gameHow2playMenu.visible = toggle


func toggleOptionUI(toggle: bool) -> void:
	gameOptionMenu.visible = toggle
