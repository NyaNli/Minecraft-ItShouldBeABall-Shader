uniform mat4 gbufferModelView;
uniform mat4 gbufferModelViewInverse;
uniform vec3 cameraPosition;

#define DEPTH 1000 // [50 100 500 1000 5000 10000]
#define PI 3.1415926535898

out float notrender;

float calcy(float y)
{
    return DEPTH * exp(y / DEPTH);
}

vec4 calc(vec4 viewpos)
{
    notrender = 0.0;
    vec4 camPos = gbufferModelViewInverse * viewpos;
    float r = calcy(camPos.y + cameraPosition.y);
    float camY = calcy(cameraPosition.y);

    float arclen = length(camPos.xz);
    vec2 dir = normalize(camPos.xz);
    float rad = arclen / DEPTH;
    if (rad > 2 * PI)
        notrender = 1000.0;

    float y = r * cos(rad) - camY;
    float x = r * sin(rad);

    camPos.xz = x * dir;
    camPos.y = y;
    return gbufferModelView * camPos;
}
