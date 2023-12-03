extends Node3D

@onready var animationPlayer: AnimationPlayer = $AnimationPlayer
@onready var rotateSound: AudioStreamPlayer3D = $RotateSound


func _ready() -> void:
	animationPlayer.play("Rotate")
	rotateSound.play()
	