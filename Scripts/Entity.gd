extends Node

var entityName
var maxHealth = 0
var maxEnergy = 0
var maxAttack = 0
var maxDefense = 0

var currentHealth
var currentEnergy
var currentAttack
var currentDefense

var isDead = false

var actions = []

func addAction(action):
	actions.append(action);

func setupStats(_name, _health, _energy, _attack, _defense):
	entityName = _name
	maxHealth = _health
	maxEnergy = _energy
	maxAttack = _attack
	maxDefense = _defense
	currentHealth = _health
	currentEnergy = _energy
	currentAttack = _attack
	currentDefense = _defense
	if (Globals.printStats): printStats()

func looseHealth(dmg):
	var blocked = max(1, dmg - currentDefense)
	currentHealth = currentHealth - blocked
	
	if (currentHealth <= 0):
		processDeath()
	else:
		print(entityName + ' has ' + str(currentHealth) + ' health left')
		
func processDeath():
	isDead = true
	print(entityName + ' died')
	
func looseEnergy(dmg):
	currentEnergy = currentEnergy - dmg
	
func printStats(message = ''):
	if (message != ''): print(message)
	print('Entity name: ' + entityName)
	print('CurrentHealth: ' + str(currentHealth))
	print('CurrentEnergy: ' + str(currentEnergy))
	print('CurrentAttack: ' + str(currentAttack))
	print('CurrentDefense: ' + str(currentDefense))
