extends Node3D

@onready var player: CharacterBody3D = $Player

@export var realityScene: Node3D
@export var memoryScene: Node3D

# var sky_reality: PanoramaSkyMaterial
# var sky_memory: PanoramaSkyMaterial

func _ready() -> void:
	realityScene.show()
	memoryScene.hide()

	# sky_reality = preload("res://Assets/Material/RealityEnvironment.tres") as PanoramaSkyMaterial
	# sky_memory = preload("res://Assets/Material/MemoryEnvironment.tres") as PanoramaSkyMaterial

	# _setSky(sky_reality)


func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_exitGame"):
		SystemHQ.quitGame()

	levelSwitch_RealityANDMemory()


func levelSwitch_RealityANDMemory() -> void:
	if player.isInReality:
		realityScene.show()
		memoryScene.hide()
	else:
		realityScene.hide()
		memoryScene.show()
