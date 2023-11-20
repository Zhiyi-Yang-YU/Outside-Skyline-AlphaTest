class_name GameManager
extends Node3D

@onready var gameUIManager: GameplayUI_Manager = $"../UI"


func _process(delta: float) -> void:
	pauseGame()


func pauseGame() -> void:
	if Input.is_action_just_pressed("ui_pause"):
		# _toggleHow2playUIHelper()
		_toggleOptionUIHelper()


#Helpers
func _toggleHow2playUIHelper() -> void:
	if gameUIManager.isOptionToggled:
		gameUIManager.togglePauseUI(true)
		gameUIManager.isHow2PlayToggled = not gameUIManager.isHow2PlayToggled
		gameUIManager.toggleHow2playUI(gameUIManager.isHow2PlayToggled)
	else:
		gameUIManager.isPauseToggled = not gameUIManager.isPauseToggled
		gameUIManager.togglePauseUI(gameUIManager.isPauseToggled)


func _toggleOptionUIHelper() -> void:
	if gameUIManager.isOptionToggled:
		gameUIManager.togglePauseUI(true)
		gameUIManager.isOptionToggled = not gameUIManager.isOptionToggled
		gameUIManager.toggleOptionUI(gameUIManager.isOptionToggled)
	else:
		gameUIManager.isPauseToggled = not gameUIManager.isPauseToggled
		gameUIManager.togglePauseUI(gameUIManager.isPauseToggled)


#按下按钮效果
func _on_game_continue_button_button_up() -> void:
	gameUIManager.isPauseToggled = false
	gameUIManager.togglePauseUI(false)
	gameUIManager.toggleOptionUI(false)
	gameUIManager.toggleHow2playUI(false)


func _on_game_how_2_play_button_button_up() -> void:
	print("How to Play Pressed")
	# gameUIManager.isHow2PlayToggled = not gameUIManager.isHow2PlayToggled
	# gameUIManager.toggleHow2playUI(gameUIManager.isHow2PlayToggled)
	# gameUIManager.gamePauseMenu.visible = false


func _on_game_option_button_button_up() -> void:
	gameUIManager.isOptionToggled = not gameUIManager.isOptionToggled
	gameUIManager.toggleOptionUI(gameUIManager.isOptionToggled)
	gameUIManager.gamePauseMenu.visible = false


func _on_game_pause_button_button_up() -> void:
	SystemHQ.quitGame()
