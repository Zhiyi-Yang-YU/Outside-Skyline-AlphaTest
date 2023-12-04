extends Node3D

@onready var fireSound: AudioStreamPlayer3D = $FireSound


func _ready() -> void:
	fireSound.play()

