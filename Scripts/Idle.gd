extends "res://Scripts/Defensive.gd"
const defenseIcon = preload("res://Assets/Defense8.png")

var rng = RandomNumberGenerator.new()

var idleMessages

func _init(_idleMessages = ['is idling']):
	idleMessages = _idleMessages
	setup('Idle', Globals.HP, 0, defenseIcon)
	
func execute(executioner, _target):
	rng.randomize()
	var i = rng.randi_range (0, idleMessages.size() - 1)
	print(executioner.entityName + ' ' + idleMessages[i])
