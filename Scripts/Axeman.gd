extends "res://Scripts/Character.gd"

func _ready():
	setupStats(12, 8, 4, 2)

func attack(target):
	target.looseHealth(currentAttack)
	print('Axeman is attacking')
	print('Axeman did ' + str(currentAttack) + ' damage')
	print('Enemy has ' + str(target.currentHealth) + ' health left')
