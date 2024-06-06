extends Line2D

@onready var player = $".."
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var start_vector = Vector2(96, 0)
	var offset_vector = Vector2(160, 0)
	#position.x = ray.position.x
	#position.y = ray.position.y
	#print("player pos")
	#print (player.position)
	#print("line pos")
	#print()
	#target_position = ray.target_position
	points[0] = start_vector
	points[1] = offset_vector
	
	var space_state = get_world_2d().direct_space_state
	
	var query = PhysicsRayQueryParameters2D.create(start_vector, offset_vector)

	var result = space_state.intersect_ray(query)
	#print(result)
	pass
