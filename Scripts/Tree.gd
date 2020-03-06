extends "res://Scripts/Obstacle.gd"

func _ready():
	setupStats(20, 0, 0, 1)
	printStats()

func executeTurn():
	print('Tree is doing something')
