extends Sprite2D


func playerHasChanged():
	View.changeDotColor(self, Stats.player_on_turn.color)


func gameIsOver():
	View.changeDotColor(self, Color(0.0, 0.0, 0.0, 0.0))
	$emit_timer.start(2)
	

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	View.changeDotColor(self, Stats.player_on_turn.color) # Replace with function body.
	Stats.player_changed.connect(playerHasChanged)
	Stats.game_over.connect(gameIsOver)

func _on_emit_timer_timeout():
	
	if Stats.champion.size() > 1:
		View.setDraw($CPUParticles2D)
	else:
		$CPUParticles2D.color = Stats.champion[0].color
	$CPUParticles2D.emitting = true

