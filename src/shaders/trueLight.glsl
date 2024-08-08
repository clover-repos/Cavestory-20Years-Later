// Circle cutout shader


extern number playerX;
extern number playerY;
extern number shaderTween;
extern number scale;

number radius = 220 * scale;
vec4 effect( vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords ) {
    number distance = pow(pow(screen_coords.x - playerX, 2) + pow(screen_coords.y - playerY, 2), shaderTween);
    number alpha = distance / radius;
    return vec4(0, 0, 0, alpha);
}
