extends "res://Scripts/Obstacle.gd"

const idle = preload("res://Scripts/Idle.gd")

func _ready():
	setupStats('Tree', 5, 0, 0, 1)
	setupLoot(10)
	var idleMessages = [
		'shakes his leaves',
		'crackles with his branches'
	]
	addAction(idle.new(idleMessages))
