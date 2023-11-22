extends Node3D

@export var npcName: String = "default NPC Name"
var canInteractLabel: String = "Press 'E' to interact with XXX"
var canNOTInteractLabel: String = "cannot talk to XXX"

@onready var npcLabel: Label3D = $VisualNode/NPCNameLabel

var player: CharacterBody3D
var playerCamera: Camera3D
var playerCameraPosition: Vector3


func _ready() -> void:
	_findPlayer()
	

func _process(delta: float) -> void:
	_setUpLabel_and_InteractUI()


func _physics_process(delta: float) -> void:
	_LabelFace2Camera()


func _findPlayer() -> void:
	var playersArray = get_tree().get_nodes_in_group("Player") # 查找添加到 "Player" 组的所有节点
	if playersArray.size() > 0: # 确保至少有一个玩家节点被找到
		player = playersArray[0] as CharacterBody3D
		playerCamera = player.get_node("VisualNode/Head/Camera3D") as Camera3D
	else:
		print("NPC.gd Error1: Player NOT found")
		SystemHQ.quitGame()


func _LabelFace2Camera() -> void:
	playerCameraPosition = playerCamera.global_transform.origin
	npcLabel.look_at(playerCameraPosition, Vector3.UP)
	npcLabel.scale.x = -1


func _setUpLabel_and_InteractUI() -> void:
	npcLabel.text = npcName
	canInteractLabel = "Press 'E' to interact with " + npcName
	canNOTInteractLabel = "cannot talk to " + npcName