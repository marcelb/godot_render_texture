shader_type spatial;
render_mode unshaded;

uniform sampler2D noise;
uniform sampler2D screen_tex : source_color;

void fragment() {
	vec2 noise_offset = texture(noise, SCREEN_UV + TIME).xy - 0.5;
    vec4 screen_texture = texture(screen_tex, SCREEN_UV+noise_offset.xy*0.05);
    ALBEDO = screen_texture.rgb;
}
