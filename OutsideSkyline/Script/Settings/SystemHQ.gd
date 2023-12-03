extends Node

const REALITY_SENCE_HEIGHT: float = 0.0
const MEMORY_SENCE_HEIGHT: float = 100.0


#游戏状态
func quitGame() -> void:
	get_tree().quit()


func changeLevel(nextLevelScene: String) -> void:
	get_tree().change_scene_to_file(nextLevelScene)


# 对象本地化
func instantiateScene_addChild(targetScene: PackedScene, parent: Node3D) -> Node3D:
	var target: Node3D = targetScene.instantiate()
	parent.add_child(target)
	return target


func instantiatePath_addChild(targetPath: String, parent: Node3D) -> Node3D:
	var target: Node3D = load(targetPath).instantiate()
	parent.add_child(target)
	return target


func spawnScene(targetScene: PackedScene, parent: Node3D, spawnPos: Vector3) -> Node3D:
	var target: Node3D = instantiateScene_addChild(targetScene, parent)
	target.global_position = spawnPos
	return target
