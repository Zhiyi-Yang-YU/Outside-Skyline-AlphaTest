extends Node3D

# 摄像机
@onready var camera: Camera3D

# 目标导航标志索引
@export var obj: Node3D

@onready var targetReticile: TextureRect = $TargetReticle
@onready var offScreenReticle: TextureRect = $OffscreenReticle

# 属性
var canShowTargetMark: bool
var isTargetCanBeSeen: bool

var offScreenTargetDirection: float

var reticlePosition: Vector2
var viewportCenterPosition: Vector2
var maxReticlePosition: Vector2

const TARGET_RETICLE_OFFSET_POSITION: Vector2 = Vector2(36, 36)
const OFF_SEREEN_RETICLE_OFFSET_POSITION: Vector2 = Vector2(72, 72)
const BORDER_OFFSET_POSITION: Vector2 = Vector2(50, 50)

var localToCamera: Vector3


func _ready() -> void:
	camera = get_viewport().get_camera_3d()
	viewportCenterPosition = Vector2(get_viewport().size) / 2.0
	maxReticlePosition = viewportCenterPosition - BORDER_OFFSET_POSITION
	obj.SIGThisIsTarget.connect(_updateCanShowTargetMark)


func _process(delta: float) -> void:
	_drawTargetDirection()
		

func _drawTargetDirection() -> void:
	if not canShowTargetMark:
		targetReticile.hide()
		offScreenReticle.hide()
	else:
		isTargetCanBeSeen = camera.is_position_in_frustum(global_position)

		if isTargetCanBeSeen:
			targetReticile.show()
			offScreenReticle.hide()
			reticlePosition = camera.unproject_position(global_position)
			targetReticile.set_global_position(reticlePosition - TARGET_RETICLE_OFFSET_POSITION)
		else:
			targetReticile.hide()
			offScreenReticle.show()
			localToCamera = camera.to_local(global_position)
			reticlePosition = Vector2(localToCamera.x, -localToCamera.y)

			if reticlePosition.abs().aspect() > maxReticlePosition.aspect():
				reticlePosition *= maxReticlePosition.x / abs(reticlePosition.x)
			else:
				reticlePosition *= maxReticlePosition.y / abs(reticlePosition.y)
			
			offScreenReticle.set_global_position(viewportCenterPosition + reticlePosition - OFF_SEREEN_RETICLE_OFFSET_POSITION)
			
			offScreenTargetDirection = Vector2.UP.angle_to(reticlePosition)
			offScreenReticle.rotation = offScreenTargetDirection


func _updateCanShowTargetMark(newValue: bool) -> void:
	canShowTargetMark = newValue
	
