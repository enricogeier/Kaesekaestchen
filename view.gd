extends Node

var time = 0


func setSquareCircle(node, circle):
	node.material.set("shader_param/do_circle", circle)

func setSquareRandomNumber(node, random_number):
	node.material.set("shader_param/random_number", random_number)

func setSquareColor(node, color):
	node.material.set("shader_param/color", color)


func setPlayerColor(node, color):
	node.material.set("shader_param/color", color)

func setDraw(node):
	node.material.set("shader_param/draw", true)

# x×(1−a)+y×a
func mixAndSet(node, color1, color2, factor):
	var result = color1 * (1 - factor) + color2 * factor
	node.material.set("shader_param/player", result)

func setNoiseColor(node, color):
	node.material.set("shader_param/noise", true)
	node.material.set("shader_param/player", color)

func resetNoiseColor(node, color):
	node.material.set("shader_param/noise", false)
	node.material.set("shader_param/player", color)


func setColor(node, color):
	node.material.set("shader_param/player", color)

func changeDotColor(node, color):
	node.material.set("shader_param/dot_color", color)

