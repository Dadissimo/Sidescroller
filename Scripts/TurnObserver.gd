extends Node

var turn = 0;
var playerTurn = true;

onready var player = get_node("Axeman")
onready var oponent = get_node("Tree")

func _process(delta):
	if (playerTurn && Input.is_action_just_released("ui_accept")):
		player.attack(oponent)
		playerTurn = false
		
	if (!playerTurn):
		oponent.executeTurn()
		playerTurn = true
