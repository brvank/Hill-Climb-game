extends Sprite


func _ready():
	pass

# warning-ignore:unused_argument
func _input(event):
	if Common.forward == false and Common.backward == false:
		$".".flip_h = false
	if Common.forward == true:
		$".".flip_h = false
	elif Common.backward == true:
		$".".flip_h = true
