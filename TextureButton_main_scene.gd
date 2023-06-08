extends TextureButton

var parent = null

func _ready():
	
	self.parent = get_tree().get_root().get_node("main_menu")


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
				parent.State.COLOR2:
					parent.changeState(parent.State.MODE)
				parent.State.COLOR3:
					parent.changeState(parent.State.MODE)
				parent.State.COLOR4:
					parent.changeState(parent.State.MODE)
		"2P":
			parent.changeState(parent.State.COLOR2)
		"3P":
			parent.changeState(parent.State.COLOR3)
		"4P":
			parent.changeState(parent.State.COLOR4)
		"ok1":
			print("Hello World from ok1!")
		"ok2":
			print("Hello World from ok2!")
		"a1l":
			parent.set_previous_color(1)
			var color = parent.get_color(1)
			var node = parent.get_texture_node(1)
			View.setPlayerColor(node, color)
		"a1r":
			parent.set_next_color(1)
			var color = parent.get_color(1)
			var node = parent.get_texture_node(1)
			View.setPlayerColor(node, color)
		"a2l":
			parent.set_previous_color(2)
			var color = parent.get_color(2)
			var node = parent.get_texture_node(2)
			View.setPlayerColor(node, color)
		"a2r":
			parent.set_next_color(2)
			var color = parent.get_color(2)
			var node = parent.get_texture_node(2)
			View.setPlayerColor(node, color)
		"a3l":
			parent.set_previous_color(3)
		"a3r":
			parent.set_next_color(3)
		"a4l":
			parent.set_previous_color(4)
		"a4r":
			parent.set_next_color(4)



