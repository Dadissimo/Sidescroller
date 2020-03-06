extends Node

var icon
var actionName
var cost

var targetStat

func baseSetup(_actionName, _targetStat, _cost, _icon):
	actionName = _actionName
	targetStat = _targetStat
	cost = _cost
	icon = _icon

func execute(_executioner, _target):
	pass
