#version 430 compatibility
#include "common.inc"

out vec4 color;
out vec4 texpos;

void main()
{
    vec4 viewpos = gl_ModelViewMatrix * gl_Vertex;

    viewpos = calc(viewpos);

    gl_Position = gl_ProjectionMatrix * viewpos;
    color = gl_Color;
    texpos = gl_TextureMatrix[0] * gl_MultiTexCoord0;
}