shader_type spatial;
render_mode depth_draw_always, unshaded;

uniform sampler2D screen_tex : hint_screen_texture;

void fragment() {
    vec4 screen_texture = texture(screen_tex, SCREEN_UV);
    vec4 blue_tint = vec4(screen_texture.r * 0.2, screen_texture.g + 0.2, screen_texture.b * 0.2, screen_texture.a * 0.5);
	ALBEDO = blue_tint.rgb;
}
