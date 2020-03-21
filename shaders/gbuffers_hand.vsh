#version 430 compatibility

out vec4 color;
out vec4 texpos;
out vec4 lmpos;

void main()
{
    vec4 viewpos = gl_ModelViewMatrix * gl_Vertex;
    gl_Position = gl_ProjectionMatrix * viewpos;
    color = gl_Color;
    texpos = gl_TextureMatrix[0] * gl_MultiTexCoord0;
    lmpos = gl_TextureMatrix[1] * gl_MultiTexCoord1;
}