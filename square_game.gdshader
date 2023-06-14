shader_type canvas_item;

uniform bool do_circle = false;

uniform float random_number = 0.0f;
uniform vec4 color = vec4(1.0f, 1.0f, 1.0f, 1.0f);




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
		
		COLOR.r = clamp(abs(sin(TIME + random_number)), 0.0f, color.r);
		COLOR.g = clamp(abs(sin(TIME + random_number)), 0.0f, color.g);
		COLOR.b = clamp(abs(sin(TIME + random_number)), 0.0f, color.b);
		COLOR.a = color.a;
	}
	else
	{
		COLOR.r = color.r;
		COLOR.g = color.g;
		COLOR.b = color.b;
		COLOR.a = color.a;
		
	}
}
