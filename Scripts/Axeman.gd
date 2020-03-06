extends "res://Scripts/Character.gd"

const attack = preload("res://Scripts/Attack.gd")

func _ready():
	setupStats('Axeman', 12, 8, 4, 2)
	if (Globals.printStats): printStats()
	addAction(attack.new())

func attack(target):
	actions[0].execute(self, target)
