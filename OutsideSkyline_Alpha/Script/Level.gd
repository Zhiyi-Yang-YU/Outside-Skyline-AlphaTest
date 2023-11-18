extends Node3D


var playerNode: Node3D
var player: PackedScene 	= preload("res://OutsideSkyline_Alpha/Scene/Character/Player.tscn")

var pauseUINode: Control
var pauseUI: PackedScene 	= preload("res://OutsideSkyline_Alpha/Scene/UI/UI.tscn")

const PLAYER_SPAWN_POSITION: Vector3 	= Vector3.ZERO



func _ready() -> void:
	playerNode = spawnScene(player, self, PLAYER_SPAWN_POSITION)
	pauseUINode = instantiateScene(pauseUI, self).get_node("GamePauseMenu")
	pauseUINode.visible = false

func _process(delta: float) -> void:
	pauseGame()
	

func pauseGame() -> void:
	if Input.is_action_just_pressed("ui_pause") and playerNode.is_on_floor():
		pauseUINode.visible = not pauseUINode.visible
		print("bob")


func instantiateScene(targetScene: PackedScene, parent: Node3D) -> Node3D:
	var target: Node3D = targetScene.instantiate()
	parent.add_child(target)
	return target

func instantiatePath(targetPath: String, parent: Node3D) -> Node3D:
	var target: Node3D = load(targetPath).instantiate()
	parent.add_child(target)
	return target

func spawnScene(targetScene: PackedScene, parent: Node3D, spawnPos: Vector3) -> Node3D:
	var target: Node3D = instantiateScene(targetScene, parent)
	target.global_position = spawnPos
	return target
