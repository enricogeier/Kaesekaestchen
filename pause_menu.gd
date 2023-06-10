extends TextureButton

var pause_gui = null

func _ready():
	
	self.pause_gui = get_tree().get_root().get_node("World")
	self.pause_gui = self.pause_gui.get_node("pause_gui")
	self.pause_gui.hide()

func _on_pressed():
	get_tree().paused = true
	self.hide()
	self.pause_gui.show()

func _process(_delta):
	if Input.is_action_just_pressed("Pause"):
		get_tree().paused = true
		self.hide()
		self.pause_gui.show()
