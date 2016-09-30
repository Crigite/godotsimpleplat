
extends StaticBody2D
onready var bottom_right = get_node("bottom_right")
onready var camera = utils.get_main_node().get_node("camera")

func _ready():
	set_process(true)
	pass
	
func _process(delta):
	if bottom_right.get_global_pos().x <= camera.get_total_pos().x:
		queue_free()
	pass


