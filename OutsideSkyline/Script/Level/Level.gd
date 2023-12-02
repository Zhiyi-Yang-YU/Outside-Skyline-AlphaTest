extends Node3D

@onready var player: CharacterBody3D = $Player

@onready var realityScene: Node3D = $GameLevel/RealityLevel
@onready var memoryScene: Node3D = $GameLevel/MemoryLevel


func _ready() -> void:
	realityScene.visible = true
	memoryScene.visible = false


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()

	levelSwitch_RealityANDMemory()


func levelSwitch_RealityANDMemory() -> void:
	if player.isInReality:
		realityScene.show()
		memoryScene.hide()
	else:
		realityScene.hide()
		memoryScene.show()
