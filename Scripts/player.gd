extends Area2D

var facing
var animation_speed = 2
var moving = false
var tile_size = 64
var inputs = {
	"right": Vector2.RIGHT,
	"left": Vector2.LEFT,
	"up": Vector2.UP,
	"down": Vector2.DOWN
}

@onready var ray = $RayCast2dFront
@onready var blockray
@onready var blockray_right = $RayCast2dBlockCheckRight
@onready var blockray_left = $RayCast2dBlockCheckLeft
@onready var blockray_up = $RayCast2dBlockCheckUp
@onready var blockray_down = $RayCast2dBlockCheckDown
@onready var popup_menu = $PopupMenu

func _ready():
	position = position.snapped(Vector2.ONE * tile_size)
	position += Vector2.ONE * tile_size / 2
	
func _unhandled_input(event):
	if event.is_action_pressed("enter"):	
		popup_menu.visible = true
		pass
	
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
	if !ray.is_colliding() or ray.get_collider().to_string().contains("Coin"): 
		move_tween(dir)
	# else we are colliding check what collided with
	elif ray.is_colliding() and ray.get_collider().to_string().contains("Box"):
		if blockray.is_colliding():
			pass
		else:
			move_tween(dir)
			
func move_tween(dir):
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", position + inputs[dir] * tile_size, 1.0/animation_speed).set_trans(Tween.TRANS_SINE)
	moving = true
	$AnimationPlayer.play(dir)
	await tween.finished
	moving = false