shader_type canvas_item;

const float dim_factor = 0.35f;


void fragment() {
	/*
	vec4 color = texture(TEXTURE, UV);
	
	if(color.rgb != vec3(1.0f, 1.0f, 1.0f) && color.rgb != vec3(0.6f, 0.6f, 0.6f) && color.a == 1.0f)
	{
		float time_factor = dim_factor * TIME;
		float new_blue = color.b - time_factor;
		
		if(new_blue < 0.0f)
		{
			new_blue = 0.0f;
			color.a = 0.9f;
		}
		
		color.b = new_blue;
		COLOR = color;
	}
	
	if(color.a == 0.9f)
	{
		float time_factor = dim_factor * TIME;
		float new_blue = color.b + time_factor;
		
		if(new_blue > 1.0f)
		{
			new_blue = 1.0f;
			color.a = 1.0f;
		}
		
		color.b = new_blue;
		COLOR = color;
	}
	
	*/
}
