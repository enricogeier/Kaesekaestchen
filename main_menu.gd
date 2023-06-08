extends Node2D

enum State
{
	MAIN, MODE, COLOR2, COLOR3, COLOR4
}

var shown_color = null

var current_state = State.MAIN

var selected_color = []
var colors = [Color.RED, Color.ORANGE, Color.YELLOW, Color.LIME, Color.CYAN, Color.MAGENTA, Color.SNOW, Color.SALMON,
Color.CORNFLOWER_BLUE, Color.SANDY_BROWN, Color.CADET_BLUE, Color.PINK]

var colors_initial = [Color.RED, Color.ORANGE, Color.YELLOW, Color.LIME, Color.CYAN, Color.MAGENTA, Color.SNOW, Color.SALMON,
Color.CORNFLOWER_BLUE, Color.SANDY_BROWN, Color.CADET_BLUE, Color.PINK]


func get_color(key):
	return shown_color[key]

func get_texture_node(key):
	match key:
		1:
			return get_node("color_2/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color1")
		2:
			return get_node("color_2/MarginContainer/VBoxContainer/MarginContainer2/CenterContainer/GridContainer/chosen_color2")
		3:
			pass
		4:
			pass

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
					colors = colors_initial
				State.COLOR3:
					get_node("color_3").hide()
					colors = colors_initial
				State.COLOR4:
					get_node("color_4").hide()
					colors = colors_initial
			
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
	
	self.shown_color = {1: colors[0], 2: colors[1], 3: colors[2], 4: colors[4]}

func _process(delta):
	pass
