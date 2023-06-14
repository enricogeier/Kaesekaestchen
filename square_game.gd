extends Sprite2D

@export var do_circle : bool
@export var go_horizontally : bool
@export var go_vertically : bool


func player_changed():
	var color = Stats.player_on_turn.color
	View.setSquareColor(self, color)

func _ready():
	View.setSquareCircle(self, false)
	var color = Stats.player_on_turn.color
	View.setSquareColor(self, color)
	Stats.player_changed.connect(player_changed)
	randomize()
	View.setSquareRandomNumber(self, randf_range(0.0, 2 * PI))
	
	if do_circle:
		View.setSquareCircle(self, true)
	
	
	








