extends Area2D

@onready var sfx = $AudioStreamPlayer2D
@onready var timer = $Timer
#@onready var player = $Player
@onready var particles: CPUParticles2D = $CPUParticles2D


# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = 2
	timer.one_shot = true
	pass # Replace with function body.


func _on_area_entered(area):
	var name_of_area = area.to_string()
	
	if name_of_area.contains("Box"):
		print("goalllllll")
		timer.wait_time = .5
		timer.start()
		particles.emitting = true

func _on_timer_timeout():
	sfx.play()
	var next_scene = "Level" + str(Global.CURRENT_LEVEL_NUMBER)
	
	SceneManager.change_scene(next_scene, Global.fade_in_options, Global.fade_out_options, Global.general_options)
	pass # Replace with function body.
