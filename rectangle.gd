extends Sprite2D

@export var left : TextureButton
@export var top : TextureButton
@export var right : TextureButton
@export var bottom : TextureButton

var alreadyDrawn = false
var sprite_texture = preload("res://textures/colors/blue.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func check():
	if !alreadyDrawn:
		if left.already_selected && top.already_selected && right.already_selected && bottom.already_selected:
			self.set_texture(sprite_texture)
			self.alreadyDrawn = true
