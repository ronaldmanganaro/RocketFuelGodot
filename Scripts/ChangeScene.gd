extends Button
@export_enum("Level1", "Level2", "Level3") var scene_change: String

#@export var scene_change: Array[String] = ["Level1", "Level2", "Level3"]
# Called when the node enters the scene tree for the first time.
func _ready():
	print(scene_change)

func _on_pressed() -> void:
	print(scene_change)
	SceneManager.change_scene(scene_change, Global.fade_out_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.


func _on_button_down() -> void:
	print(scene_change)
	SceneManager.change_scene(scene_change, Global.fade_out_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.
