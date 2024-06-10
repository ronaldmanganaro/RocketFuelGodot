extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_texture_button_button_down():
	position.y +=3
	pass # Replace with function body.


func _on_texture_button_button_up():
	position.y -=3
	pass # Replace with function body.
