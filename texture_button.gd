extends TextureButton

@export var rectangle_1 : Sprite2D
@export var rectangle_2 : Sprite2D

var hover = preload("res://textures/colors/grey.png")
var selected = preload("res://textures/colors/blue.png")
var normal = preload("res://textures/colors/grey-export.png")

var already_selected = false

func _on_pressed():
	if !already_selected:
		already_selected = true
		Stats.setColor(get_parent(), Stats.player_on_turn.color)
		if rectangle_1 != null:
			rectangle_1.check()
		if rectangle_2 != null:
			rectangle_2.check()
		
		Stats.setNextPlayerOnTurn()


func _on_mouse_entered():
	if !already_selected:
		Stats.setColor(get_parent(), Color(0.75, 0.75, 0.75, 1.0 ))


func _on_mouse_exited():
	if !already_selected:
		Stats.setColor(get_parent(), Color(0.5, 0.5, 0.5, 1.0))
