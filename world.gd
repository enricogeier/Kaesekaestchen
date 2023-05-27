extends Node2D


# only to test initialize(), delete it after testing
func _ready():
	var p1 = Stats.Player.new(0, Color.CORNFLOWER_BLUE)
	var p2 = Stats.Player.new(1, Color.ORANGE)
	
	Stats.initalize(2, [p1, p2])


func _process(_delta):
	pass

