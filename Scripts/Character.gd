extends "res://Scripts/Entity.gd"

var xp

func _process(_delta):
	if (Globals.printStats && Input.is_action_just_released("debugPrint")):
		printStats()
