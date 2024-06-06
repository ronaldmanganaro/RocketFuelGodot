extends Area2D

var animation_speed = 2
var moving = false
var tile_size = 64
var inputs = {
	"right": Vector2.RIGHT,
	"left": Vector2.LEFT,
	"up": Vector2.UP,
	"down": Vector2.DOWN
}
var facing
 
@onready var ray = $RayCast2dFront

@onready var blockray
@onready var blockray_right = $RayCast2dBlockCheckRight
@onready var blockray_left = $RayCast2dBlockCheckLeft
@onready var blockray_up = $RayCast2dBlockCheckUp
@onready var blockray_down = $RayCast2dBlockCheckDown

func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size / 2
	
func _unhandled_input(event):
	if moving:
		return
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
			
func move(dir):
	facing = dir
	ray.target_position = inputs[dir] * tile_size
	ray.force_raycast_update()
	
	match dir:
		"right":
			blockray = blockray_right
		"left":
			blockray = blockray_left
		"up":
			blockray = blockray_up
		"down":
			blockray = blockray_down
	# if front ray isnt colliding move
	if !ray.is_colliding():
		var tween = get_tree().create_tween()
		tween.tween_property(self, "position", position + inputs[dir] * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
		moving = true
		$AnimationPlayer.play(dir)
		await tween.finished
		moving = false
	# else we are colliding check what collided with
	else:
		var name = ray.get_collider().to_string()
		print("name of collider " + name)
		#if collider is block check in front of the block
		if blockray.is_colliding() and name.contains("Box"): 
			pass
		else:
			var tween = get_tree().create_tween()
			tween.tween_property(self, "position", position + inputs[dir] * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
			moving = true
			$AnimationPlayer.play(dir)
			await tween.finished
			moving = false
		#if name.contains("Box"):
			#print("Box")
			#var tween = get_tree().create_tween()
			#tween.tween_property(self, "position", position + inputs[dir] * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
			#moving = true
			#$AnimationPlayer.play(dir)
			#await tween.finished
			#moving = false
		if name.contains("Coin"):
			print("coin")
			var tween = get_tree().create_tween()
			tween.tween_property(self, "position", position + inputs[dir] * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
			moving = true
			$AnimationPlayer.play(dir)
			await tween.finished
			moving = false
			