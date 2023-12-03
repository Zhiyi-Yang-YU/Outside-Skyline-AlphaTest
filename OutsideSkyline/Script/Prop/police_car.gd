extends Node3D

@onready var animationPlayer: AnimationPlayer = $AnimationPlayer
@onready var policeCarSound: AudioStreamPlayer3D = $PoliceCarSound


func _ready() -> void:
	animationPlayer.play("light_switch")
	policeCarSound.play()

