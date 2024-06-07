extends Label


# Called when the node enters the scene tree for the first time.
func _ready():
	self.text = "Level " + str(Global.CURRENT_LEVEL_NUMBER)
	pass # Replace with function body.

