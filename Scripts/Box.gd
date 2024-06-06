extends Area2D

var tile_size = 64
var collision_dir
@onready var player = %Player
@onready var raycast_left = $RayCastLeft
@onready var raycast_right = $RayCastRight
@onready var raycast_up = $RayCastUp
@onready var raycast_down = $RayCastDown
@onready var player_ray = "Player/RayCast2dBlockCheck"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_area_entered(area):
	collision_dir = raycast_right.is_colliding()
	
	if player.facing == "left" and !raycast_left.is_colliding():
		position.x -= tile_size
	elif player.facing == "right" and !raycast_right.is_colliding():
		position.x += tile_size
	elif player.facing == "up" and !raycast_up.is_colliding():
		position.y -= tile_size
	elif player.facing == "down" and !raycast_down.is_colliding():
		position.y += tile_size
	pass # Replace with function body.
	
