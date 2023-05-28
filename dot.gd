extends Sprite2D


func playerHasChanged():
	View.changeDotColor(self, Stats.player_on_turn.color)

# Called when the node enters the scene tree for the first time.
func _ready():
	View.changeDotColor(self, Stats.player_on_turn.color) # Replace with function body.
	Stats.player_changed.connect(playerHasChanged)
