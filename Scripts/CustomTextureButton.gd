class_name CustomTextureButton
extends TextureButton

@onready var ButtonLabel: Label = Label.new()
@export var ButtonText: String = "Main Menu"
var res_path = "res://Resources/gb_theme.tres"

func _init():
	pass
	#
#func _init(text):
	##var gb_theme: String = "res://Resources/gb_theme.tres"
	#self.theme =  load(res_path)
	#self.texture_normal = load("res://assets/Tiny Swords (Update 010)/UI/Buttons/Button_Blue_3Slides.png")
	#self.texture_pressed = load("res://assets/Tiny Swords (Update 010)/UI/Buttons/Button_Blue_3Slides_Pressed.png")
	#ButtonLabel.text = text

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_button_down():
	ButtonLabel.position.x -=3
	pass # Replace with function body.

func _on_button_up():
	ButtonLabel.position.x +=3
