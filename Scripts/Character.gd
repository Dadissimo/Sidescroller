extends "res://Scripts/Entity.gd"

func _process(delta):
	if Input.is_action_just_released("debugPrint"):
		printStats()
