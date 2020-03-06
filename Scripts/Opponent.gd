extends "res://Scripts/Entity.gd"
var lootLoader = load("res://Scripts/Loot.gd")
var rng = RandomNumberGenerator.new()

var loot

func setupLoot(_xp = 0, _money = 0):
	loot = lootLoader.new(_xp, _money)

func executeTurn(player):
	if (actions.size() == 0): return
	
	rng.randomize()
	var i = rng.randi_range (0, actions.size() - 1)
	actions[i].execute(self, player)
	
func provideXp(player):
	print('Gained ' + str(loot.xp) + ' experience')
	player.xp = player.xp + loot.xp
