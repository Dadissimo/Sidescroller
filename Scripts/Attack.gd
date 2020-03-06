extends "res://Scripts/Offensive.gd"
const attackIcon = preload("res://Assets/Attack8.png")

func _init(multiplier = 1, energy = 1):
	setup('Axeswing', multiplier, Globals.HP, energy, attackIcon)
