extends Node

var turn = 0;
var playerTurn = true;
var encounterCompleted = false;

onready var player = get_node("Axeman")
onready var opponent = get_node("Tree")

onready var menu = get_node("TestMenu")
onready var actions = get_tree().get_nodes_in_group("action")
var selectedAction = 0

func _ready():
	actions[selectedAction].modulate = Color(0,0,1)

func _process(_delta):
	if (playerTurn && Input.is_action_just_released("ui_left")):
		if (selectedAction - 1 < 0): return
		selectedAction = selectedAction - 1;
		actions[selectedAction].modulate = Color(0,0,1)
		actions[selectedAction + 1].modulate = Color(1,1,1)
	if (playerTurn && Input.is_action_just_released("ui_right")):
		if (selectedAction + 1 > actions.size() - 1): return
		selectedAction = selectedAction + 1;
		actions[selectedAction].modulate = Color(0,0,1)
		actions[selectedAction - 1].modulate = Color(1,1,1)
	
	if (encounterCompleted):
		return
	
	if (opponent.isDead):
		print('Encounter completed')
		opponent.provideXp(player)
		encounterCompleted = true
		return
	
	if (playerTurn && Input.is_action_just_released("ui_accept")):
		player.attack(opponent, selectedAction)
		playerTurn = false
		return
		
	if (!playerTurn):
		opponent.executeTurn(player)
		playerTurn = true
		return
