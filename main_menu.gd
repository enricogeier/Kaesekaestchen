extends Node2D

signal change_chosen_colors

enum State
{
	MAIN, MODE, COLOR2, COLOR3, COLOR4
}

var shown_color = null

var current_state = State.MAIN

var colors = [Color.RED, Color.ORANGE, Color.YELLOW, Color.LIME, Color.CYAN, Color.MAGENTA, Color.SNOW, Color.SALMON,
Color.CORNFLOWER_BLUE, Color.SANDY_BROWN, Color.CADET_BLUE, Color.PINK]


func init_game(amount_of_players):
	match amount_of_players:
		2:
			if shown_color[1] == shown_color[2]:
				return false
			
			var p1 = Stats.Player.new(0, shown_color[1])
			var p2 = Stats.Player.new(1, shown_color[2])
			Stats.initialize(2, [p1, p2])
			get_tree().change_scene_to_file("res://world2player.tscn")
		3:
			if shown_color[1] == shown_color[2] || shown_color[2] == shown_color[3] || shown_color[1] == shown_color[3]:
				return false
			
			var p1 = Stats.Player.new(0, shown_color[1])
			var p2 = Stats.Player.new(1, shown_color[2])
			var p3 = Stats.Player.new(2, shown_color[3])
			Stats.initialize(3, [p1, p2, p3])
			get_tree().change_scene_to_file("res://world3player.tscn")
		4:
			if shown_color[1] == shown_color[2] || shown_color[1] == shown_color[3] || shown_color[1] == shown_color[4] || shown_color[2] == shown_color[3] || shown_color[2] == shown_color[4] || shown_color[3] == shown_color[4]:
				return false
			
			
			var p1 = Stats.Player.new(0, shown_color[1])
			var p2 = Stats.Player.new(1, shown_color[2])
			var p3 = Stats.Player.new(2, shown_color[3])
			var p4 = Stats.Player.new(3, shown_color[4])
			Stats.initialize(4, [p1, p2, p3, p4])
			get_tree().change_scene_to_file("res://world4player.tscn")


func get_color(key):
	return shown_color[key]

func get_texture_node(key):
	match key:
		1:
			return [get_node("color_2/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color1"), 
			get_node("color_3/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color1"), 
			get_node("color_4/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color1")]
		2:
			return [get_node("color_2/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color2"), 
			get_node("color_3/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color2"), 
			get_node("color_4/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color2")]
		3:
			return [get_node("color_3/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color3"), 
			get_node("color_4/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color3")]
		4:
			return [get_node("color_4/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color4")]

func set_next_color(key):
	var color = shown_color[key]
	var index = colors.find(color)
	
	if index == colors.size() - 1:
		index = 0
	else:
		index += 1
		
	
	var next_color = colors[index]
	shown_color[key] = next_color

func set_previous_color(key):
	var color = shown_color[key]
	var index = colors.find(color)
	
	if index == 0:
		index = colors.size() - 1
	else:
		index -= 1
	
	
	var previous_color = colors[index]
	shown_color[key] = previous_color

func changeState(state):
	match state:
		State.MAIN:
			get_node("select_mode").hide()
			get_node("Sprite2D").show()
			get_node("button_position").show()
		State.MODE:
			match self.current_state:
				State.MAIN:
					get_node("Sprite2D").hide()
					get_node("button_position").hide()
				State.COLOR2:
					get_node("color_2").hide()
					
					emit_signal("change_chosen_colors")
					self.shown_color = {1: colors[0], 2: colors[1], 3: colors[2], 4: colors[3]}
					
				State.COLOR3:
					get_node("color_3").hide()
					
					emit_signal("change_chosen_colors")
					self.shown_color = {1: colors[0], 2: colors[1], 3: colors[2], 4: colors[3]}
					
				State.COLOR4:
					get_node("color_4").hide()
					
					emit_signal("change_chosen_colors")
					self.shown_color = {1: colors[0], 2: colors[1], 3: colors[2], 4: colors[3]}
					
			
			get_node("select_mode").show()
		State.COLOR2:
			get_node("select_mode").hide()
			get_node("color_2").show()
		State.COLOR3:
			get_node("select_mode").hide()
			get_node("color_3").show()
		State.COLOR4:
			get_node("select_mode").hide()
			get_node("color_4").show()
	
	
	current_state = state



func _ready():
	get_node("select_mode").hide()
	get_node("color_2").hide()
	get_node("color_3").hide()
	get_node("color_4").hide()
	
	self.shown_color = {1: colors[0], 2: colors[1], 3: colors[2], 4: colors[3]}

func _process(delta):
	pass
