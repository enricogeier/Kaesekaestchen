extends Sprite2D

@export var do_circle : bool

func game_is_over():
	self.queue_free()

func player_changed():
	var color = Stats.player_on_turn.color
	color.a = 0.75
	View.setSquareColor(self, color)

func _ready():
	View.setSquareCircle(self, false)
	var color = Stats.player_on_turn.color
	color.a = 0.75
	View.setSquareColor(self, color)
	Stats.player_changed.connect(player_changed)
	Stats.game_over.connect(game_is_over)
	
	
	if do_circle:
		View.setSquareCircle(self, true)
	else:
		randomize()
		View.setSquareRandomNumber(self, randf_range(0.0, 2 * PI))
	
	
	








