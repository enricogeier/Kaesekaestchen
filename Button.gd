extends Button

class ButtonClass:
	
	var id = null
	var position = null
	
	
	var topLeft = null
	var topRight = null
	var middleLeft = null
	var middleRight = null
	var bottomLeft = null
	var bottomRight = null
	
	func ButtonClass(id, position, topLeft, topRight, middleLeft, middleRight, bottomLeft, bottomRight):
		self.id = id
		self.position = position
		self.topLeft = topLeft
		self.topRight = topRight
		self.middleLeft = middleLeft
		self.middleRight = middleRight
		self.bottomLeft = bottomLeft
		self.bottomRight = bottomRight
	
	
	# Called when the node enters the scene tree for the first time.
	func _ready():
		pass # Replace with function body.
	# Called every frame. 'delta' is the elapsed time since the previous frame.
	func _process(delta):
		pass




func _on_pressed():
	pass # Replace with function body.


func _on_mouse_entered():
	print("hover")


func _on_mouse_exited():
	print("no hover")
