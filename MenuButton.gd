extends Button


func _on_pressed():
	match str(self.name):
		"Button01": 
			var p1 = Stats.Player.new(0, Color.SANDY_BROWN)
			var p2 = Stats.Player.new(1, Color.CADET_BLUE)
			Stats.initialize(2, [p1, p2])
			get_tree().change_scene_to_file("res://world2player.tscn")
		"Button02":
			var p1 = Stats.Player.new(0, Color.CORNFLOWER_BLUE)
			var p2 = Stats.Player.new(1, Color.ORANGE)
			var p3 = Stats.Player.new(2, Color.DARK_MAGENTA)
			Stats.initialize(3, [p1, p2, p3])
			get_tree().change_scene_to_file("res://world3player.tscn")
		"Button03":
			var p1 = Stats.Player.new(0, Color.CORNFLOWER_BLUE)
			var p2 = Stats.Player.new(1, Color.ORANGE)
			var p3 = Stats.Player.new(2, Color.PINK)
			var p4 = Stats.Player.new(3, Color.YELLOW)
			Stats.initialize(4, [p1, p2, p3, p4])
			get_tree().change_scene_to_file("res://world4player.tscn")
