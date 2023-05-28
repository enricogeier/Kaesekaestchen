extends Node

enum State
{
	PAUSE, END, PLAY
}

signal player_changed

var current_state = State.PLAY

var amount_of_players = 2

var players = null

var player_on_turn = null

func changeState(state):
	if !(current_state == State.PAUSE && state == State.END):
		current_state = state




func setNextPlayerOnTurn():
	
	
	if player_on_turn.number >= amount_of_players - 1:
		player_on_turn = players[0]
	else:
		player_on_turn = players[player_on_turn.number + 1]
	
	emit_signal("player_changed")
	

func initialize(amount_of_players, players):
	
	
	if amount_of_players < 2:
		amount_of_players = 2
	self.amount_of_players = amount_of_players
	self.players = players
	self.player_on_turn = players[0]


class Player:
	var number
	var color
	var rectangles = 0
	
	func _init(number, color):
		self.number = number
		self.color = color


