extends TextureButton

var parent = null

func _ready():
	
	self.parent = get_tree().get_root().get_node("main_menu")
	match str(name):
		"start":
			grab_focus()


func _on_pressed():
	match str(name):
		"start":
			parent.changeState(parent.State.MODE)
		"quit":
			get_tree().quit(0)
		"back_button":
			match parent.current_state:
				parent.State.MODE:
					parent.changeState(parent.State.MAIN)
				parent.State.COLOR:
					parent.changeState(parent.State.MODE)
		"2P":
			parent.changeState(parent.State.COLOR2)
		"3P":
			parent.changeState(parent.State.COLOR3)
		"4P":
			parent.changeState(parent.State.COLOR4)



