extends Node3D

@onready var player: CharacterBody3D = $Player


func _ready() -> void:
	DialogBox._showDialogBox(DramaScript._0_001)
