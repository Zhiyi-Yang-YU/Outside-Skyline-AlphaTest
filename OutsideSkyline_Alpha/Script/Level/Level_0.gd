extends Node3D

@onready var player: CharacterBody3D = $"../Player"
@onready var mrBlue: Node3D = $"../MrBlue"

var eventNum: int = 0

var event1_check: bool = false
var event2_check: bool = false
var event3_check: bool = false


func _ready() -> void:
#	mrBlue.hide()
	DialogBox._showDialogBox(DramaScript._0_001)

