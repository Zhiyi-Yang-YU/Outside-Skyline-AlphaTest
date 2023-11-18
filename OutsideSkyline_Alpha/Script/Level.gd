extends Node3D


var playerNode: Node3D
var player: PackedScene 	= preload("res://OutsideSkyline_Alpha/Scene/Character/Player.tscn")

var pauseUINode: Control
var pauseUI: PackedScene 	= preload("res://OutsideSkyline_Alpha/Scene/UI/UI.tscn")

const PLAYER_SPAWN_POSITION: Vector3 	= Vector3.ZERO


func _ready() -> void:
	playerNode = SystemHQ.spawnScene(player, self, PLAYER_SPAWN_POSITION)
	pauseUINode = SystemHQ.instantiateScene(pauseUI, self).get_node("Control_Game")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()




