extends KinematicBody2D
onready var path = get_parent().get_node("Path2D/PathFollow2D")

func _ready():
	pass

func _process(delta):
	path.set_offset(path.get_offset() + 200*delta)
	position.x = path.offset
	pass
