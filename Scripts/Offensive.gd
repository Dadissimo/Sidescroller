extends "res://Scripts/Action.gd"

var damage

func setup(_actionName, _damage, _targetStat, _cost):
	baseSetup(_actionName, _targetStat, _cost)
	damage = _damage
