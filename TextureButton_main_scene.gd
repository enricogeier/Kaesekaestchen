extends TextureButton

var parent = null

func _ready():
	
	self.parent = get_tree().get_root().get_node("main_menu")
	parent.change_chosen_colors.connect(hideStuff)

func hideStuff():
	if str(name) == "ok2" || str(name) == "ok3" || str(name) == "ok4":
		get_child(0).hide()



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
		"ok2":
			var check = parent.init_game(2)
			if !check:
				self.get_child(0).show()
		"ok3":
			var check = parent.init_game(3)
			if !check:
				self.get_child(0).show()
		"ok4":
			var check = parent.init_game(4)
			if !check:
				self.get_child(0).show()
		"a1l":
			parent.set_previous_color(1)
			var color = parent.get_color(1)
			var node = parent.get_texture_node(1)
			View.setPlayerColor(node[0], color)
			View.setPlayerColor(node[1], color)
			View.setPlayerColor(node[2], color)
		"a1r":
			parent.set_next_color(1)
			var color = parent.get_color(1)
			var node = parent.get_texture_node(1)
			View.setPlayerColor(node[0], color)
			View.setPlayerColor(node[1], color)
			View.setPlayerColor(node[2], color)
		"a2l":
			parent.set_previous_color(2)
			var color = parent.get_color(2)
			var node = parent.get_texture_node(2)
			View.setPlayerColor(node[0], color)
			View.setPlayerColor(node[1], color)
			View.setPlayerColor(node[2], color)
		"a2r":
			parent.set_next_color(2)
			var color = parent.get_color(2)
			var node = parent.get_texture_node(2)
			View.setPlayerColor(node[0], color)
			View.setPlayerColor(node[1], color)
			View.setPlayerColor(node[2], color)
		"a3l":
			parent.set_previous_color(3)
			var color = parent.get_color(3)
			var node = parent.get_texture_node(3)
			View.setPlayerColor(node[0], color)
			View.setPlayerColor(node[1], color)
		"a3r":
			parent.set_next_color(3)
			var color = parent.get_color(3)
			var node = parent.get_texture_node(3)
			View.setPlayerColor(node[0], color)
			View.setPlayerColor(node[1], color)
		"a4l":
			parent.set_previous_color(4)
			var color = parent.get_color(4)
			var node = parent.get_texture_node(4)
			View.setPlayerColor(node[0], color)
		"a4r":
			parent.set_next_color(4)
			var color = parent.get_color(4)
			var node = parent.get_texture_node(4)
			View.setPlayerColor(node[0], color)





