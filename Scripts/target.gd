extends Area2D

@onready var sfx = $AudioStreamPlayer2D
@onready var timer = $Timer
@onready var collider = $CollisionShape2D

# Called when the node enters the scene tree for the first time.
func _ready():
	timer.wait_time = 2
	timer.one_shot = true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	var name_of_area = area.to_string()
	
	if name_of_area.contains("Box"):
		print("goalllllll")
		timer.wait_time = .5
		timer.start()

func _on_timer_timeout():
	sfx.play()
	pass # Replace with function body.
