extends Node3D

const MR_BLUE_SPAWN_POSITION: Vector3 = Vector3(0, 0, 7)

var npcNode: Node3D
var mrBlueNode: Node3D
var npc: PackedScene = preload("res://OutsideSkyline_Alpha/Scene/Character/NPC.tscn")
# var mrBlue: PackedScene = preload("res://OutsideSkyline_Alpha/Scene/Character/Mr_Blue.tscn")


func _ready() -> void:
	npcNode = SystemHQ.spawnScene(npc, self, MR_BLUE_SPAWN_POSITION)
	# pass


func _process(delta: float) -> void:
	pass
