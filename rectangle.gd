extends Sprite2D

@export var left : TextureButton
@export var top : TextureButton
@export var right : TextureButton
@export var bottom : TextureButton

var alreadyDrawn = false
var color = Color(0.0, 0.0, 0.0, 0.0)
var time = 90


func check():
	if !alreadyDrawn && left != null && top != null && right != null && bottom != null:
		if left.already_selected && top.already_selected && right.already_selected && bottom.already_selected:
			View.setNoiseColor(self, Stats.player_on_turn.color)
			Stats.player_on_turn.rectangles += 1
			self.alreadyDrawn = true
			Stats.checkRectangle()
