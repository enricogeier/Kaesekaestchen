shader_type canvas_item;

uniform vec3 dot_color;

void fragment() {
	
	float alpha_value = texture(TEXTURE, UV).a;
	float uv_c = UV.y;
	
	if(uv_c == 1.0f)
	{
		uv_c = 0.01f;
	}
	
	vec3 temp_color = vec3(1.0, 1.0, 1.0);
	temp_color *= (1.0f - uv_c); 
	
	COLOR = vec4(mix(dot_color, temp_color, 0.75), alpha_value);
	
	
}
