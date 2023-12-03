extends Node3D

@onready var player: CharacterBody3D = $Player

@export var realityScene: Node3D
@export var memoryScene: Node3D


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
