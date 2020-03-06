extends Node

var turn = 0;
var playerTurn = true;
var encounterCompleted = false;

onready var player = get_node("Axeman")
onready var opponent = get_node("Tree")

func _process(_delta):
	if (encounterCompleted): return
	
	if (opponent.isDead):
		print('Encounter completed')
		opponent.provideXp(player)
		encounterCompleted = true
		return
	
	if (playerTurn && Input.is_action_just_released("ui_accept")):
		player.attack(opponent)
		playerTurn = false
		return
		
	if (!playerTurn):
		opponent.executeTurn(player)
		playerTurn = true
		return
