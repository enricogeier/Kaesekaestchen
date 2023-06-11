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
		if get_tree().paused == false:
			get_tree().paused = true
			self.hide()
			self.pause_gui.show()
			return
		
		if get_tree().paused == true:
			var pause_gui = get_parent().get_node("pause_gui")
			var button_continue = pause_gui.get_node("MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/continue")
			button_continue._on_pressed()
			return
