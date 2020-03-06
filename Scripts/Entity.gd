extends Node

var maxHealth = 0
var maxEnergy = 0
var maxAttack = 0
var maxDefense = 0

var currentHealth
var currentEnergy
var currentAttack
var currentDefense

func setupStats(health, energy, attack, defense):
	maxHealth = health
	maxEnergy = energy
	maxAttack = attack
	maxDefense = defense
	currentHealth = health
	currentEnergy = energy
	currentAttack = attack
	currentDefense = defense

func looseHealth(dmg):
	currentHealth = currentHealth - dmg
	
func looseEnergy(dmg):
	currentEnergy = currentEnergy - dmg
	
func printStats():
	print('CurrentHealth: ' + str(currentHealth))
	print('CurrentEnergy: ' + str(currentEnergy))
	print('CurrentAttack: ' + str(currentAttack))
	print('CurrentDefense: ' + str(currentDefense))
