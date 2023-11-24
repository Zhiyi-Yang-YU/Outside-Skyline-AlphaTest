extends Node3D
class_name GameplayUI_Manager

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
	blackBackground.visible = toggle
	gamePauseMenu.visible = toggle
	get_tree().paused = toggle
	if toggle:
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else:
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func toggleHow2playUI(toggle: bool) -> void:
	gameHow2playMenu.visible = toggle


func toggleOptionUI(toggle: bool) -> void:
	gameOptionMenu.visible = toggle
