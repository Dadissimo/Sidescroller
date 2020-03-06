extends "res://Scripts/Action.gd"

var multiplier

func setup(_actionName, _multiplier, _targetStat, _cost, _icon):
	baseSetup(_actionName, _targetStat, _cost, _icon)
	multiplier = _multiplier

func execute(executioner, target):
	print(executioner.entityName + ' executed ' + actionName)
	target.looseHealth(multiplier * executioner.currentAttack)
	executioner.currentEnergy = executioner.currentEnergy - cost 

