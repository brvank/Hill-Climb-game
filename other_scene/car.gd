extends RigidBody2D
var speed = 10000

func _ready():
	pass

# warning-ignore:unused_argument
func _integrate_forces(state):
	if Input.is_action_pressed("ui_left"):
		apply_torque_impulse(-speed)
	if Input.is_action_pressed("ui_right"):
		apply_torque_impulse(speed)
