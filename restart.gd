extends TextureButton



func _on_pressed():
	Stats.reset()
	get_tree().reload_current_scene()
	get_tree().paused = false
	
