extends Node3D

@export var isInteractable: bool = true
var canInteractNow: bool = false

@export var npcName: String = "default NPC Name"
var ui: Node3D
var ui_npcInteractInfo: Label
var canInteractLabel: String = "Press 'E' to interact with XXX"
var canNOTInteractLabel: String = "cannot talk to XXX"

@onready var npcLabel: Label3D = $VisualNode/NPCNameLabel

var player: CharacterBody3D
var playerCamera: Camera3D
var playerCameraPosition: Vector3


func _ready() -> void:
	_findPlayer()
	_findUI()


func _process(delta: float) -> void:
	_setUpLabel_and_InteractUI()


func _physics_process(delta: float) -> void:
	_LabelFace2Camera()


func _findPlayer() -> void:
	var playersArray = get_tree().get_nodes_in_group("Player")  # 查找添加到 "Player" 组的所有节点
	if playersArray.size() > 0:  # 确保至少有一个玩家节点被找到
		player = playersArray[0] as CharacterBody3D
		playerCamera = player.get_node("VisualNode/Head/Camera3D") as Camera3D
	else:
#		print("NPC.gd ERROR1: Player NOT found")
		SystemHQ.quitGame()


func _findUI() -> void:
	var UIArray = get_tree().get_nodes_in_group("UI")
	if UIArray.size() > 0:
		ui = UIArray[0] as Node3D
		ui_npcInteractInfo = ui.get_node(
			"Control_GamePlayUI/InteractTargetInfo/InteractTargetInfoLabel"
			) as Label
		print("NPC.gd: UI found")
	else:
#		print("NPC.gd ERROR2: UI NOT found")
		SystemHQ.quitGame()


func _LabelFace2Camera() -> void:
	playerCameraPosition = playerCamera.global_transform.origin
	npcLabel.look_at(playerCameraPosition, Vector3.UP)
	npcLabel.scale.x = -1


func _setUpLabel_and_InteractUI() -> void:
	npcLabel.text = npcName
	canInteractLabel = "Press 'E' to interact with " + npcName
	canNOTInteractLabel = "cannot talk to " + npcName


func _on_can_interact_area_body_entered(playerNode: Node3D) -> void:
	if not playerNode.is_in_group("Player"):
		ui_npcInteractInfo.visible = false
		canInteractNow = false
	else:
		ui_npcInteractInfo.visible = true
		ui_npcInteractInfo.text = canInteractLabel
		canInteractNow = true


func _on_can_interact_area_body_exited(playerNode: Node3D) -> void:
	if not playerNode.is_in_group("Player"):
		ui_npcInteractInfo.visible = false
		canInteractNow = false
	else:
		ui_npcInteractInfo.visible = false
		ui_npcInteractInfo.text = canNOTInteractLabel
		canInteractNow = false
