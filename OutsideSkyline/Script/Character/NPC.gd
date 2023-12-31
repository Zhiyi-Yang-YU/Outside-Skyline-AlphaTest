extends Node3D

var player: CharacterBody3D
var playerCamera: Camera3D
var playerCameraPosition: Vector3

@export var isInteractable: bool = true
var canInteractNow: bool = false

@export var npcName: String = "default NPC Name"
@onready var npcLabel: Label3D = $VisualNode/NPCNameLabel
var ui: Node3D
var ui_npcInteractInfo: Label
var canInteractLabel: String = "Press 'E' to interact with XXX"
var canNOTInteractLabel: String = "Cannot interact with XXX"

@onready var targetMark: Node3D = $TargetMark_itemnpc

var isTarget: bool:
	set(new_value):
		isTarget = new_value
		emit_signal("SIGThisIsTarget", isTarget)

signal SIGThisIsTarget(newValue)


func _ready() -> void:
	_findPlayer()
	_findUI()


func _process(delta: float) -> void:
	if not isInteractable:
		canInteractNow = false

	_npcLabelSetup()


func _physics_process(delta: float) -> void:
	_LabelFace2Camera()


func _findPlayer() -> void:
	var playersArray = get_tree().get_nodes_in_group("Player")
	if playersArray.size() > 0:
		player = playersArray[0] as CharacterBody3D
		playerCamera = player.get_node("VisualNode/Head/Camera3D") as Camera3D
	else:
		SystemHQ.quitGame()


func _findUI() -> void:
	var UIArray = get_tree().get_nodes_in_group("UI")
	if UIArray.size() > 0:
		ui = UIArray[0] as Node3D
		ui_npcInteractInfo = (
			ui.get_node("Control_GamePlayUI/InteractTargetInfo/InteractTargetInfoLabel") as Label
		)
		ui_npcInteractInfo.visible = false
	else:
		SystemHQ.quitGame()


func _LabelFace2Camera() -> void:
	playerCameraPosition = playerCamera.global_transform.origin
	npcLabel.look_at(playerCameraPosition, Vector3.UP)
	npcLabel.scale.x = -1


func _npcLabelSetup() -> void:
	if not isInteractable:
		npcLabel.text = npcName
		canNOTInteractLabel = "Cannot interact with " + npcName
	else:
		npcLabel.text = npcName
		canInteractLabel = "Press 'E' to interact with " + npcName


func _on_can_interact_area_body_entered(playerNode: Node3D) -> void:
	if not isInteractable:
		ui_npcInteractInfo.hide()
	else:
		if not playerNode.is_in_group("Player"):
			ui_npcInteractInfo.hide()
			canInteractNow = false
		else:
			ui_npcInteractInfo.show()
			ui_npcInteractInfo.text = canInteractLabel
			canInteractNow = true


func _on_can_interact_area_body_exited(playerNode: Node3D) -> void:
	if not isInteractable:
		ui_npcInteractInfo.hide()
	else:
		if not playerNode.is_in_group("Player"):
			ui_npcInteractInfo.hide()
			canInteractNow = false
		else:
			ui_npcInteractInfo.hide()
			ui_npcInteractInfo.text = canNOTInteractLabel
			canInteractNow = false


#工具函数
func setAsTarget(targetMarkToggle: bool) -> void:
	isTarget = targetMarkToggle
