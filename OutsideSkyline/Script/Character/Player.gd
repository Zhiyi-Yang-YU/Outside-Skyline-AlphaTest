extends CharacterBody3D
class_name PlayerCharacter

var isInReality: bool = true

#物理
var currentSpeed: float
var isCrouching: bool = false
const WALK_SPEED: float = 5.0
const CROUCH_SPEED: float = 3.0
const SPRINT_SPEED: float = 8.0

const GRAVITATIONAL_ACCELERATION: float = 9.80665
const REGULAR_JUMP_VELOCITY: float = 4.5
const CROUCHING_DEPTH_LOCAL: float = -0.7

#摄像机
const CAMERA_ROTATE_SENSITIVITY: float = 0.003
const CAMERA_ROTATE_X_LIMIT_MIN: float = -45.0
const CAMERA_ROTATE_X_LIMIT_MAX: float = 60.0

#FOV
const FOV_BASE: float = 80.0
const FOV_TARGET_SCLAE: float = 1.3
const FOV_VELOCITY_CLAMP_LIMIT_MIN: float = 0.5
const FOV_VELOCITY_CLAMP_LIMIT_MAX: float = SPRINT_SPEED * 2

#走路视角上下晃动常量与变量
var headBobTime: float = 0.0
var currentCrouchingDepth: float = 0.0
const HEAD_HEIGHT: float = 1.8
const HEAD_BOB_FREQUENCY: float = 2.0
const HEAD_BOB_AMPLITUDE: float = 0.05

#lerp scale
const AIR_STOP_LERP_DELTA_SCALE: float = 3.0
const FLOOR_STOP_LERP_DELTA_SCALE: float = 7.0
const FOV_LERP_DELTA_SCALE: float = 8.0
const CROUCH_LERP_DELTA_SCALE: float = 10.0

@onready var player: Node3D = $VisualNode
@onready var head: Node3D = $VisualNode/Head
@onready var camera: Camera3D = $VisualNode/Head/Camera3D
@onready var standCollissionShape: CollisionShape3D = $Stand_CollisionShape3D
@onready var crouchCollissionShape: CollisionShape3D = $Crouch_CollisionShape3D


func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		head.rotate_y(-event.relative.x * CAMERA_ROTATE_SENSITIVITY)
		camera.rotate_x(-event.relative.y * CAMERA_ROTATE_SENSITIVITY)
		camera.rotation.x = clamp(
			camera.rotation.x,
			deg_to_rad(CAMERA_ROTATE_X_LIMIT_MIN),
			deg_to_rad(CAMERA_ROTATE_X_LIMIT_MAX)
		)


func _physics_process(delta: float) -> void:
	#跳跃
	jump(delta)

	#移动
	move(delta)

	#走路视角摇晃
	headBob(delta)

	#冲刺改变FOV
	sprintFOV(delta)

	#在[现实]和[回忆]切换
	switchRealityANDMemory()

	move_and_slide()


func jump(dt: float) -> void:
	if Input.is_action_just_pressed("ui_jump") and is_on_floor():
		velocity.y = REGULAR_JUMP_VELOCITY
	if not is_on_floor():
		velocity.y -= GRAVITATIONAL_ACCELERATION * dt


func move(dt: float) -> void:
	if Input.is_action_pressed("ui_crouch") and is_on_floor():
		isCrouching = true
		standCollissionShape.disabled = true
		crouchCollissionShape.disabled = false
		currentSpeed = CROUCH_SPEED
	else:
		isCrouching = false
		standCollissionShape.disabled = false
		crouchCollissionShape.disabled = true
		if Input.is_action_pressed("ui_sprint"):
			currentSpeed = SPRINT_SPEED
		else:
			currentSpeed = WALK_SPEED

	var input_dir = Input.get_vector(
		"ui_moveLeft", "ui_moveRight", "ui_moveForward", "ui_moveBackward"
	)
	var direction = (head.transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()

	if is_on_floor():
		if direction:
			velocity.x = direction.x * currentSpeed
			velocity.z = direction.z * currentSpeed
		else:
			velocity.x = lerp(
				velocity.x, direction.x * currentSpeed, FLOOR_STOP_LERP_DELTA_SCALE * dt
			)
			velocity.z = lerp(
				velocity.z, direction.z * currentSpeed, FLOOR_STOP_LERP_DELTA_SCALE * dt
			)
	else:
		velocity.x = lerp(velocity.x, direction.x * currentSpeed, AIR_STOP_LERP_DELTA_SCALE * dt)
		velocity.z = lerp(velocity.z, direction.z * currentSpeed, AIR_STOP_LERP_DELTA_SCALE * dt)


func headBob(dt: float) -> void:
	headBobTime += dt * velocity.length() * float(is_on_floor())

	currentCrouchingDepth = lerp(
		currentCrouchingDepth,
		CROUCHING_DEPTH_LOCAL * float(isCrouching),
		CROUCH_LERP_DELTA_SCALE * dt
	)

	head.position.x = HEAD_BOB_AMPLITUDE * cos(HEAD_BOB_FREQUENCY * headBobTime / 2)
	head.position.y = (
		HEAD_BOB_AMPLITUDE * sin(HEAD_BOB_FREQUENCY * headBobTime)
		+ HEAD_HEIGHT
		+ currentCrouchingDepth
	)


func sprintFOV(dt: float) -> void:
	var fovVelocityClamped = clamp(
		Vector3(velocity.x, 0.0, velocity.z).length(),
		FOV_VELOCITY_CLAMP_LIMIT_MIN,
		FOV_VELOCITY_CLAMP_LIMIT_MAX
	)

	var fovTarget = FOV_BASE + FOV_TARGET_SCLAE * fovVelocityClamped

	camera.fov = lerp(camera.fov, fovTarget, FOV_LERP_DELTA_SCALE * dt)


func switchRealityANDMemory() -> void:
	if Input.is_action_just_pressed("ui_switchRealityANDMemory") and is_on_floor():
		if isInReality:
			global_position.y = global_position.y + SystemHQ.MEMORY_SENCE_HEIGHT
		else:
			global_position.y = (
				global_position.y - SystemHQ.MEMORY_SENCE_HEIGHT + SystemHQ.REALITY_SENCE_HEIGHT
			)

		isInReality = not isInReality
