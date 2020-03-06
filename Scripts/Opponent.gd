extends "res://Scripts/Entity.gd"

var rng = RandomNumberGenerator.new()

func executeTurn(player):
	if (actions.size() == 0): return
	
	rng.randomize()
	var i = rng.randi_range (0, actions.size() - 1)
	actions[i].execute(self, player)
