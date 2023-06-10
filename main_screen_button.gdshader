shader_type canvas_item;

const float dim_factor = 0.35f;


void fragment() {

	if(COLOR.r == 0.0f && COLOR.g == 0.0f && COLOR.a != 0.0f)
	{
		COLOR.b = abs(sin(TIME));
	}

}
