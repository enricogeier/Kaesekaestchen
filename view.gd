extends Node

var time = 0


# x×(1−a)+y×a
func mixAndSet(node, color1, color2, factor):
	var result = color1 * (1 - factor) + color2 * factor
	node.material.set("shader_param/player", result)

func setColor(node, color):
	node.material.set("shader_param/player", color)

func changeDotColor(node, color):
	node.material.set("shader_param/dot_color", color)
