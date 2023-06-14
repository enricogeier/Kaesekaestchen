shader_type canvas_item;

uniform vec4 color;

uniform bool do_circle = false;

uniform float random_number = 0.0f;

void vertex()
{
	if(do_circle)
	{
		VERTEX += vec2(sin(TIME) * 100.0f, cos(TIME) * 100.0f);
	}
}



void fragment() 
{
	if(!do_circle)
	{
		
		COLOR.r = clamp(abs(sin(TIME + random_number)), 0.0f, color.r);
		COLOR.g = clamp(abs(sin(TIME + random_number)), 0.0f, color.g);
		COLOR.b = clamp(abs(sin(TIME + random_number)), 0.0f, color.b);
	}
	else
	{
		COLOR.rgb = color.rgb;
	}
	
}
