#version 410

in vec3 Position;
//in vec3 Colour;

out vec4 col;
uniform mat4 gWorld;

float colormap_red(float x) {
    return (1.0 + 1.0 / 63.0) * x - 1.0 / 63.0;
}

float colormap_green(float x) {
    return -(1.0 + 1.0 / 63.0) * x + (1.0 + 1.0 / 63.0);
}

vec4 colormap(float x) {
    float r = clamp(colormap_red(x), 0.0, 1.0);
    float g = clamp(colormap_green(x), 0.0, 1.0);
    float b = 1.0;
    return vec4(r, g, b, 1.0);
}
void main()
{
	
    gl_Position = gWorld * vec4( Position, 1.0);
    col = colormap(Position.z);

}
