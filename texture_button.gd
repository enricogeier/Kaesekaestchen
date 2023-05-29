extends TextureButton

@export var rectangle_1 : Sprite2D
@export var rectangle_2 : Sprite2D

var already_selected = false

func _on_pressed():
	
	if !already_selected:
		already_selected = true
		View.setNoiseColor(get_parent(), Stats.player_on_turn.color)
		var rectangles = Stats.player_on_turn.rectangles
		if rectangle_1 != null:
			rectangle_1.check()
		if rectangle_2 != null:
			rectangle_2.check()
		
		if rectangles == Stats.player_on_turn.rectangles:
			Stats.setNextPlayerOnTurn()


func _on_mouse_entered():
	if !already_selected:
		View.mixAndSet(get_parent(), Stats.player_on_turn.color, Color(0.75, 0.75, 0.75, 1.0), 0.5)


func _on_mouse_exited():
	if !already_selected:
		View.setColor(get_parent(), Color(0.5, 0.5, 0.5, 1.0))
