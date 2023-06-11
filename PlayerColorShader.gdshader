shader_type canvas_item;

uniform vec4 player;
uniform bool noise = false;

float random (vec2 uv) {
    return fract(sin(dot(uv.xy,
        vec2(12.9898,78.233))) * 43758.5453123);
}


void fragment() {
	// Place fragment code here.
	
	if(COLOR.a == 0.0f)
	{
		discard;
	}
	
	if(noise)
	{
		float random_number = random(UV);
		
		if( random_number > 0.5f)
		{
			COLOR = vec4(0.0, 0.0, 0.0, 0.0);
		}
		else
		{
			COLOR = player;
		}
	}	
	else
	{
		COLOR = player;
	}
	

}
