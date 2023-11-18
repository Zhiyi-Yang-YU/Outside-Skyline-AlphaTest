class_name GameManager
extends Node3D

@onready var gameUIManager: GameplayUI_Manager = $"../UI"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pauseGame()

func pauseGame() -> void:
	if Input.is_action_just_pressed("ui_pause"):
		if gameUIManager.isOptionToggled:
			gameUIManager.togglePauseUI(true)
			gameUIManager.isOptionToggled = not gameUIManager.isOptionToggled
			gameUIManager.toggleOptionUI(gameUIManager.isOptionToggled)
		else:
			gameUIManager.isPauseToggled = not gameUIManager.isPauseToggled
			gameUIManager.togglePauseUI(gameUIManager.isPauseToggled)
		


#signal process
func _on_game_continue_button_button_up() -> void:
	gameUIManager.isPauseToggled = false
	gameUIManager.togglePauseUI(false)
	gameUIManager.toggleOptionUI(false)


func _on_game_option_button_button_up() -> void:
#	print(gameUIManager.isOptionToggled)
#	print("option button pressed")
	gameUIManager.isOptionToggled = not gameUIManager.isOptionToggled
	gameUIManager.toggleOptionUI(gameUIManager.isOptionToggled)
	gameUIManager.gamePauseMenu.visible = false

func _on_game_pause_button_button_up() -> void:
	SystemHQ.quitGame()



