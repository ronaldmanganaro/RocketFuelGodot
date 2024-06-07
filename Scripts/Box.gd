extends Area2D

var tile_size = 64
var collision_dir
var animation_speed = 2
var moving = false
@onready var sfx = $AudioStreamPlayer2D
@onready var player = %Player
@onready var raycast_left = $RayCastLeft
@onready var raycast_right = $RayCastRight
@onready var raycast_up = $RayCastUp
@onready var raycast_down = $RayCastDown
@onready var player_ray = "Player/RayCast2dBlockCheck"
@onready var collider = $CollisionShape2D
var inputs = {
	"right": Vector2.RIGHT,
	"left": Vector2.LEFT,
	"up": Vector2.UP,
	"down": Vector2.DOWN
}

func _on_area_entered(area):
	collision_dir = raycast_right.is_colliding()
	print("Box area enetered!")
	print(area.to_string())
	if area.to_string().contains('Target'):
		pass
	else:
		if player.facing == "left" and !raycast_left.is_colliding():
			position.x -= tile_size
			#move_tween(player.facing)
		elif player.facing == "right" and !raycast_right.is_colliding():
			position.x += tile_size
			#move_tween(player.facing)
		elif player.facing == "up" and !raycast_up.is_colliding():
			position.y -= tile_size
			#move_tween(player.facing)
		elif player.facing == "down" and !raycast_down.is_colliding():
			position.y += tile_size
			#move_tween(player.facing)
		sfx.play()
		
func move_tween(dir):
	#collider.disabled = true
	
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", position + inputs[dir] * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
	moving = true
	$AnimationPlayer.play("move_box")
	await tween.finished
	moving = false	
	#collider.disabled = false
	
