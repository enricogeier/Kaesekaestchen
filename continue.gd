extends TextureButton

var world = null
var parent = null

func _ready():
	
	self.world = get_tree().get_root().get_node("World")
	self.parent = self.world.get_node("pause_gui")
	print("something")



func _on_pressed():
	parent.hide()
	world.get_node("burger_menu").show()
	get_tree().paused = false
	
