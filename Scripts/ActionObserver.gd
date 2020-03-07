extends Node

var actions = []
var selectedAction = 0
var menu
var player
var opponent

func _init(_player, _opponent, _menu):
	menu = _menu
	player = _player
	opponent = _opponent
	
	for action in player.actions:
		var actionRect = TextureRect.new()
		actionRect.texture = action.icon
		menu.add_child(actionRect)
		actions.append(actionRect)
		
	actions[selectedAction].modulate = Color(0,0,1)
	
func processTurn():
	if (Input.is_action_just_released("ui_left")):
		if (selectedAction - 1 < 0):
			return true
		selectedAction = selectedAction - 1;
		actions[selectedAction].modulate = Color(0,0,1)
		actions[selectedAction + 1].modulate = Color(1,1,1)
		return true
	if (Input.is_action_just_released("ui_right")):
		if (selectedAction + 1 > actions.size() - 1):
			return true
		selectedAction = selectedAction + 1;
		actions[selectedAction].modulate = Color(0,0,1)
		actions[selectedAction - 1].modulate = Color(1,1,1)
		return true
	if (Input.is_action_just_released("ui_accept")):
		player.attack(opponent, selectedAction)
		return false
	return true
