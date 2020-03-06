extends Node

onready var player = get_node("Axeman")
onready var opponent = get_node("Tree")
onready var menu = get_node("TestMenu/Container")
onready var actionObserverLoader = preload("res://Scripts/ActionObserver.gd")

var turn = 0;
var playerTurn = true;
var encounterCompleted = false;
var actionObserver

func _ready():
	actionObserver = actionObserverLoader.new(player, opponent, menu)

func _process(_delta):
	if (encounterCompleted):
		return
	
	if (opponent.isDead):
		print('Encounter completed')
		opponent.provideXp(player)
		encounterCompleted = true
		return
		
	if (playerTurn):
		playerTurn = actionObserver.processTurn()
	else :
		opponent.executeTurn(player)
		turn = turn + 1
		playerTurn = true
		return
