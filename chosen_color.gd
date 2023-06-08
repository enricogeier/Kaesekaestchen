extends TextureRect


# Called when the node enters the scene tree for the first time.
func _ready():
	match(str(name)):
		"chosen_color1":
			View.setPlayerColor(self, Color.RED)
		"chosen_color2":
			View.setPlayerColor(self, Color.ORANGE)
		"chosen_color3":
			View.setPlayerColor(self, Color.YELLOW)
		"chosen_color4":
			View.setPlayerColor(self, Color.LIME)

