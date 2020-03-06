extends Node

var turn = 0;
var playerTurn = true;

onready var player = get_node("Axeman")
onready var oponent = get_node("Tree")

func _process(_delta):
	if (oponent.isDead):
		return
	
	if (playerTurn && Input.is_action_just_released("ui_accept")):
		player.attack(oponent)
		playerTurn = false
		return
		
	if (!playerTurn):
		oponent.executeTurn()
		playerTurn = true
		return
