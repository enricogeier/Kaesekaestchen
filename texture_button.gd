extends TextureButton

@export var rectangle_1 : Sprite2D
@export var rectangle_2 : Sprite2D

var hover = preload("res://textures/colors/grey.png")
var selected = preload("res://textures/colors/blue.png")
var normal = preload("res://textures/colors/grey-export.png")

var already_selected = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_pressed():
	if !already_selected:
		already_selected = true
		get_parent().set_texture(selected)
		rectangle_1.check()
		rectangle_2.check()


func _on_mouse_entered():
	if !already_selected:
		get_parent().set_texture(hover)


func _on_mouse_exited():
	if !already_selected:
		get_parent().set_texture(normal)
