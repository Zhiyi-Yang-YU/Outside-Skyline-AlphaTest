extends Node3D


const PLAYER_SPAWN_POSITION: Vector3 	= Vector3.ZERO
var player: PackedScene 				= preload("res://OutsideSkyline_Alpha/Scene/Character/Player.tscn")



func _ready() -> void:
	spawnScene(player, self, PLAYER_SPAWN_POSITION)


func _process(delta: float) -> void:
	pass



func instantiateScene(targetScene: PackedScene, parent: Node) -> Node:
	var target: Node = targetScene.instantiate()
	parent.add_child(target)
	return target

func instantiatePath(targetPath: String, parent: Node) -> Node:
	var target: Node = load(targetPath).instantiate()
	parent.add_child(target)
	return target

func spawnScene(targetScene: PackedScene, parent: Node, spawnPos: Vector3) -> Node:
	var target: Node = instantiateScene(targetScene, parent)
	target.global_position = spawnPos
	return target
