shader_type spatial;
render_mode unshaded;

uniform sampler2D noise;
uniform sampler2D screen_tex : source_color;

uniform float time_scale = 0.02;
uniform float distortion_scale = 0.05;

void fragment() {
	vec2 noise_offset = texture(noise, SCREEN_UV + TIME * time_scale).xy - 0.5;
    vec4 screen_texture = texture(screen_tex, SCREEN_UV + noise_offset.xy * distortion_scale);
    ALBEDO = screen_texture.rgb;
}
