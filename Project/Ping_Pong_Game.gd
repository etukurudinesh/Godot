extends Node2D
var player
var computer
var ball

func _ready():
	player = get_node("Player")
	computer = get_node("Computer")
	ball = get_node("Ball")

	set_physics_process(true)

func _physics_process(delta):
	player.set_position(Vector2( player.get_position().x , get_local_mouse_position().y))
	computer.set_position(Vector2(computer.get_position().x , ball.get_position().y))
	