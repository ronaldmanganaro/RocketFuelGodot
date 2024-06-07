extends Button
# Called when the node enters the scene tree for the first time.




func _ready():
	Global.CURRENT_LEVEL_NUMBER+=1
	print(Global.CURRENT_LEVEL_NUMBER)
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_up():
	var next_scene = "Level" + str(Global.CURRENT_LEVEL_NUMBER)
	SceneManager.change_scene(next_scene, Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.
