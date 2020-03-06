extends "res://Scripts/Entity.gd"

var xp = 0

func _process(_delta):
	if (Globals.printStats && Input.is_action_just_released("debugPrint")):
		printStats()

func printStats():
	.printStats()
	print('Experience: ' + str(xp))
