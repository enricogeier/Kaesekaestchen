shader_type canvas_item;

uniform bool do_circle = false;
uniform float random_number = 0.0f;
uniform vec4 color;

const float dim_factor = 0.3f;

void vertex()
{
	if(do_circle)
	{
		VERTEX += vec2(sin(TIME) * 100.0f, cos(TIME) * 100.0f);
	}
}

void fragment() {
	if(!do_circle)
	{
		
		COLOR.r = clamp(abs(sin(TIME + random_number)), 0.0f, color.r -  dim_factor);
		COLOR.g = clamp(abs(sin(TIME + random_number)), 0.0f, color.g - dim_factor);
		COLOR.b = clamp(abs(sin(TIME + random_number)), 0.0f, color.b - dim_factor);
	}
	else
	{
		COLOR.r = color.r - dim_factor;
		COLOR.g = color.g - dim_factor;
		COLOR.b = color.b - dim_factor;
		
	}
}
