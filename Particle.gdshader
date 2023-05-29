shader_type canvas_item;

uniform bool draw = false;

float random (vec2 uv) {
    return fract(sin(dot(uv.xy,
        vec2(12.9898,78.233))) * 43758.5453123);
}

void fragment() {
	// Place fragment code here.

	if(draw)
	{
		float red = random(UV);
		float green = random(UV - vec2(17.0f, 17.0f));
		float blue = random(UV + vec2(17.0f, 17.0f));
		
		COLOR = vec4(red, green, blue, 1.0f);
	}


}
