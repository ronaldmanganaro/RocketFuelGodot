@tool
class_name CustomTextureButton
extends TextureButton

@export var ButtonText: String = "Main Menu"
var res_path = "res://Resources/gb_theme.tres"
var button_label: Label = null

func _init(text: String = "blank"):
	var center_container = CenterContainer.new()
	center_container.size.x = 192
	center_container.size.y = 51
	self.add_child(center_container)

	var gb_theme: String = "res://Resources/gb_theme.tres"
	self.theme =  load(gb_theme)
	self.texture_normal = load("res://assets/Tiny Swords (Update 010)/UI/Buttons/Button_Blue_3Slides.png")
	self.texture_pressed = load("res://assets/Tiny Swords (Update 010)/UI/Buttons/Button_Red_3Slides_Pressed.png")
	self.texture_hover = load("res://assets/Tiny Swords (Update 010)/UI/Buttons/Button_Hover_3Slides.png")

	button_label = Label.new()

	button_label.text = text
	button_label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	button_label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER

	center_container.add_child(button_label)

	self.button_down.connect(_on_button_down)
	self.button_up.connect(_on_botton_up)

func _on_button_down():
	button_label.position.y +=3

func _on_botton_up():
	button_label.position.y -=3
	SceneManager.change_scene(button_label.text.replace(" ",""), Global.fade_out_options, Global.fade_in_options, Global.general_options)
