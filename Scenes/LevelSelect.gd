extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	var nodes  = get_children()
	print(nodes)
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_level_1_pressed():
	SceneManager.change_scene("Level1", Global.fade_in_options, Global.fade_out_options, Global.general_options)

	pass # Replace with function body.


func _on_level_2_pressed():
	SceneManager.change_scene("Level2", Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.


func _on_level_3_pressed():
	SceneManager.change_scene("Level3", Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.


func _on_main_menu_pressed():
	SceneManager.change_scene("MainMenu", Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.