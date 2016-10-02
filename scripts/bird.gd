# script: bird
extends RigidBody2D
const SPEED_MAX = Vector2(500,500)
var speed = Vector2(0,0)
var speed_now = Vector2(0,0)
var target

func _ready():
	target = self
	set_fixed_process(true)
	set_process_input(true)
	
	pass

func _fixed_process(delta):
	var pos = self.get_pos()
	speed_now.x = lerp(speed_now.x, speed.x, 0.1)
	speed_now.y = lerp(speed_now.y, speed.y, 0.1)
	target.set_pos(pos + speed_now * delta)
	var bodies = get_colliding_bodies()
	if bodies.size()>0:
		print(bodies[0].get_name())
	pass

func _input(event):
	if event.is_action_pressed("ui_right"):
		speed.x = SPEED_MAX.x
	if event.is_action_pressed("ui_left"):
		speed.x = -SPEED_MAX.x
	if event.is_action_pressed("ui_up"):
		set_linear_velocity(Vector2(get_linear_velocity().x, -100))
	if event.is_action_released("ui_right"):
		speed.x = 0
	if event.is_action_released("ui_left"):
		speed.x = 0
	pass

