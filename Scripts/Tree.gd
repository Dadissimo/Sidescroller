extends "res://Scripts/Obstacle.gd"

const idle = preload("res://Scripts/Idle.gd")

func _ready():
	setupStats('Tree', 20, 0, 0, 1)
	if (Globals.printStats): printStats()
	addAction(idle.new())
