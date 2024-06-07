extends Line2D

@onready var player = $".."
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var start_vector = Vector2(96, 0)
	var offset_vector = Vector2(160, 0)

	points[0] = start_vector
	points[1] = offset_vector

	pass
