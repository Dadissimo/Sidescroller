extends "res://Scripts/Character.gd"

const attackLoader = preload("res://Scripts/Attack.gd")
const idleLoader = preload("res://Scripts/Idle.gd")

func _ready():
	setupStats('Axeman', 12, 8, 4, 2)
	addAction(attackLoader.new())
	addAction(idleLoader.new())

func attack(target, actionIndex):
	actions[actionIndex].execute(self, target)
