extends Node2D

enum State
{
	MAIN, MODE, COLOR2, COLOR3, COLOR4
}

var current_state = State.MAIN



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
				State.COLOR3:
					get_node("color_3").hide()
				State.COLOR4:
					get_node("color_4").hide()
			
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

func _process(delta):
	pass
