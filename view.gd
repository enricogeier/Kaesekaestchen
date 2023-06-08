extends Node

var time = 0

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


func setColor(node, color):
	node.material.set("shader_param/player", color)

func changeDotColor(node, color):
	node.material.set("shader_param/dot_color", color)
