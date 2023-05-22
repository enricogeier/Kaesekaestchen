extends Node2D

var texture = preload("res://textures/colors/grey_dot.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	var start = Vector2(384, 156)
	
	for i in range(0, 7):
		
		for j in range(0, 5):
			var sprite = Sprite2D.new()
			sprite.set_name(str(i) + str(j));
			add_child(sprite)
			sprite.translate(start + Vector2(i * 192, j * 192))

			sprite.texture = texture
			sprite.apply_scale(Vector2(0.5, 0.5))
			


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
