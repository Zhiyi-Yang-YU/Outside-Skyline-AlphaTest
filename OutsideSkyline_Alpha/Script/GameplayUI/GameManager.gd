extends Node3D
class_name GameManager

@onready var gameUIManager: GameplayUI_Manager = $"../UI"


func _process(delta: float) -> void:
	pauseGame()


func pauseGame() -> void:
	if Input.is_action_just_pressed("ui_pause"):
		# 实现不了一点，谁家好人能把游戏暂停菜单写成状态机啊！
		# 要我说，删了算了，反正用不上
		# _toggleHow2playUIHelper()
		_toggleOptionUIHelper()


#Helpers
func _toggleHow2playUIHelper() -> void:
	if gameUIManager.isHow2PlayToggled and not gameUIManager.isPauseToggled:
		# 此时二级菜单HOW TO PLAY【还没有】显示，从游戏界面打开一级菜单
		gameUIManager.togglePauseUI(true)
		gameUIManager.isHow2PlayToggled = not gameUIManager.isHow2PlayToggled
		gameUIManager.toggleHow2playUI(gameUIManager.isHow2PlayToggled)
	else:
		# 此时二级菜单【已经】显示，回到一级菜单
		gameUIManager.isPauseToggled = not gameUIManager.isPauseToggled
		gameUIManager.togglePauseUI(gameUIManager.isPauseToggled)


func _toggleOptionUIHelper() -> void:
	if gameUIManager.isOptionToggled and not gameUIManager.isHow2PlayToggled:
		# 此时二级菜单OPTION【还没有】显示，从游戏界面打开一级菜单
		gameUIManager.togglePauseUI(true)
		gameUIManager.isOptionToggled = not gameUIManager.isOptionToggled
		gameUIManager.toggleOptionUI(gameUIManager.isOptionToggled)
	else:
		# 此时二级菜单【已经】显示，回到一级菜单
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
	gameUIManager.isHow2PlayToggled = not gameUIManager.isHow2PlayToggled
	gameUIManager.toggleHow2playUI(gameUIManager.isHow2PlayToggled)
	gameUIManager.gamePauseMenu.visible = false


func _on_game_option_button_button_up() -> void:
	gameUIManager.isOptionToggled = not gameUIManager.isOptionToggled
	gameUIManager.toggleOptionUI(gameUIManager.isOptionToggled)
	gameUIManager.gamePauseMenu.visible = false


func _on_game_exit_button_button_up() -> void:
	SystemHQ.quitGame()
