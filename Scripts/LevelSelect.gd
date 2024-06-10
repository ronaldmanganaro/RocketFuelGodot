extends GridContainer


# Called when the node enters the scene tree for the first time.
func _ready():
	#	var scenelist = get_node("/root/Scenes").scenes["_sections"]
	var scenelist = get_node("/root/Scenes").scenes

	for scene in scenelist:
		if scene.contains('Level') or scene.contains("Main"):
			var new_button = CustomTextureButton.new(scene)
			self.add_child(new_button)
			print(scene)

