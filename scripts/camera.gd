
extends Camera2D
onready var bird = utils.get_main_node().get_node("bird")

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_fixed_process(true)
	pass

func _fixed_process(delta):
	set_pos(Vector2(bird.get_pos().x, get_pos().y))
func get_total_pos():
	return Vector2(get_pos().x - 200, get_pos().y)
	pass