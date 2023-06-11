extends Node



signal player_changed
signal game_over
signal reset_game



var amount_of_players = 2

var players = null

var player_on_turn = null

var champion = []

var rectangles = 0
var totalAmountOfRectangles = 0


func checkRectangle():
	self.totalAmountOfRectangles += 1
	if self.totalAmountOfRectangles == self.rectangles:
		var maxRectangles = 0
		for i in players:
			if i.rectangles > maxRectangles:
				maxRectangles = i.rectangles
		for i in players:
			if i.rectangles == maxRectangles:
				champion.append(i)
		
		emit_signal("game_over")




func setNextPlayerOnTurn():
	
	
	if player_on_turn.number >= amount_of_players - 1:
		player_on_turn = players[0]
	else:
		player_on_turn = players[player_on_turn.number + 1]
	
	emit_signal("player_changed")
	

func reset():
	self.totalAmountOfRectangles = 0;
	for player in players:
		player.rectangles = 0
	self.champion = []
	self.player_on_turn = players[0]
	
	emit_signal("reset_game")
	
	

func initialize(amount_of_players, players):
	
	
	if amount_of_players < 2:
		amount_of_players = 2
	self.amount_of_players = amount_of_players
	self.players = players
	self.player_on_turn = players[0]
	
	match amount_of_players:
		2:
			self.rectangles = 24
		3:
			self.rectangles = 32
		4:
			self.rectangles = 40
	
	self.reset()
	
	


class Player:
	var number
	var color
	var rectangles = 0
	
	func _init(number, color):
		self.number = number
		self.color = color


