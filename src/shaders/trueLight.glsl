// Circle cutout shader with some cool 'blending'

uniform float playerX;
uniform float playerY;
uniform float shaderTween;
uniform float scale;

vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
    float radius = 220.0 * scale;

    float distance = pow(pow(screen_coords.x - playerX, 2.0) + pow(screen_coords.y - playerY, 2.0), shaderTween);
    float alpha = distance / radius;
    return vec4(0.0, 0.0, 0.0, alpha);
}
