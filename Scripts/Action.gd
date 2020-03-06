extends Node

var actionName
var cost

var targetStat

func baseSetup(_actionName, _targetStat, _cost):
	actionName = _actionName
	targetStat = _targetStat
	cost = _cost

func execute(executioner, target):
	pass
