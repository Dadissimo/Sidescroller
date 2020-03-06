extends "res://Scripts/Obstacle.gd"

const idle = preload("res://Scripts/Idle.gd")

func _ready():
	setupStats('Tree', 20, 0, 0, 1)
	var idleMessages = [
		'shakes his leaves',
		'crackles with his branches'
	]
	addAction(idle.new(idleMessages))
