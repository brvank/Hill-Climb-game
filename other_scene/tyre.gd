extends RigidBody2D
var speed =800
var speedback = 50
func _ready():
	$PinJoint2D.softness = 5
	pass

func _integrate_forces(_state):
	if Common.forward == true:
		apply_torque_impulse(speed)
		apply_central_impulse(Vector2(1,0))
	if Common.backward == true:
		apply_torque_impulse(-speedback)
		apply_central_impulse(Vector2(-1,0))
