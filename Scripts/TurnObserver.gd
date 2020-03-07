extends Node

onready var player = get_node("Axeman")
onready var opponent = get_node("Tree")
onready var menu = get_node("TestMenu/Container")
onready var actionObserverLoader = preload("res://Scripts/ActionObserver.gd")
onready var dialog_text = get_node("Dialog/Box/Text")

var turn = 0;
var playerTurn = true;
var encounterCompleted = false;
var actionObserver

func _ready():
	actionObserver = actionObserverLoader.new(player, opponent, menu)
	displayStats()

func _process(_delta):
	if (encounterCompleted):
		return
	
	if (opponent.isDead):
		print('Encounter completed after ' + str(turn + 1) + ' turns')
		opponent.provideXp(player)
		encounterCompleted = true
		return
		
	if (playerTurn):
		playerTurn = actionObserver.processTurn()
	else :
		opponent.executeTurn(player)
		turn = turn + 1
		playerTurn = true
		displayStats()
		return
		
func displayStats():
	var playerStats = getStatsMessage(player)
	var opponentStats = getStatsMessage(opponent)
	dialog_text.text = playerStats + '\n' + opponentStats
	
func getStatsMessage(entity):
	var stats = entity.getStats()
	var complete = ""
	
	for i in range(0,stats.size()):
		if (i == 0): complete = stats[0]
		else: complete += ' / ' + str(stats[i])
	return complete
