extends Sprite2D

var faded = false

var fade_factor = 0

var circle = false

var colors  = [Color.RED, Color.ORANGE, Color.YELLOW, Color.GREEN, Color.BLUE, Color.VIOLET, Color.DARK_MAGENTA, 
Color.OLIVE, Color.DARK_GOLDENROD, Color.CHOCOLATE, Color.DARK_SLATE_BLUE, Color.MEDIUM_SPRING_GREEN, Color.MIDNIGHT_BLUE, Color.YELLOW_GREEN]
# Called when the node enters the scene tree for the first time.


func _ready():
	View.setSquareCircle(self, false)
	randomize()
	var random_number_1 = randi_range(0, colors.size() - 1)
	View.setSquareColor(self, colors[random_number_1])
	
	var random_number_2 = randi_range(30, ProjectSettings.get_setting("display/window/size/viewport_width") - 30)
	var random_number_3 = randi_range(30, ProjectSettings.get_setting("display/window/size/viewport_height") - 30)
	var random_number_4 = randf_range(0.5, 1.0)
	var random_number_5 = randi_range(1, 10)
	
	self.position = Vector2(random_number_2, random_number_3);
	self.scale = Vector2(random_number_4, random_number_4);
	
	if randi_range(1, 10) == 10:
		circle = true
		View.setSquareCircle(self, true)
	else:
		$Timer.start(random_number_5)





func _on_timer_timeout():
	
	if !circle:
		randomize()
		var random_number = randi_range(0, colors.size() - 1)
		View.setSquareColor(self, colors[random_number])
		
		var random_number_2 = randi_range(30, ProjectSettings.get_setting("display/window/size/viewport_width") - 30)
		var random_number_3 = randi_range(30, ProjectSettings.get_setting("display/window/size/viewport_height") - 30)
		var random_number_4 = randf_range(0.5, 1.0)
		var random_number_5 = randi_range(1, 10)
		var random_number_6 = randf_range(0, 2 * PI)
		
		self.position = Vector2(random_number_2, random_number_3);
		self.scale = Vector2(random_number_4, random_number_4);
		$Timer.start(random_number_5)
		
		View.setSquareRandomNumber(self, random_number_6)
		
		

	

	
	






