extends Button


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
	


func _on_button_up():
	SceneManager.change_scene("LevelSelect", Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.
