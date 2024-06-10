extends Button
	
func _on_button_up():
	SceneManager.change_scene("LevelSelect", Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.
