extends Node3D

const PLAYER_SPAWN_POSITION: Vector3 	= Vector3(0, 0, 20)

@onready var realityScene: Node3D = $GameLevel/RealityLevel
@onready var memoryScene: Node3D = $GameLevel/MemoryLevel

var playerNode: CharacterBody3D
var player: PackedScene 	= preload("res://OutsideSkyline_Alpha/Scene/Character/Player.tscn")


func _ready() -> void:
	playerNode = SystemHQ.spawnScene(player, self, PLAYER_SPAWN_POSITION)
	realityScene.visible = true
	memoryScene.visible = false

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()

	levelSwitch_RealityANDMemory()



func levelSwitch_RealityANDMemory() -> void:
	if playerNode.isInReality:
		realityScene.visible = true
		memoryScene.visible = false
	else:
		realityScene.visible = false
		memoryScene.visible = true




