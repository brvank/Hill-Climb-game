extends Node2D


func _ready():
	$CanvasLayer2/ColorRect/AnimationPlayer.play("New Anim")

func _on_TouchScreenButton_pressed():
	Common.forward = false
	Common.backward = true

func _on_TouchScreenButton2_pressed():
	Common.forward = true
	Common.backward = false

func _on_TouchScreenButton_released():
	Common.forward = false
	Common.backward = false

func _on_TouchScreenButton2_released():
	Common.forward = false
	Common.backward = false

# warning-ignore:unused_argument
func _on_AnimationPlayer_animation_finished(anim_name):
	$CanvasLayer2/ColorRect/AnimationPlayer.play("New Anim")
