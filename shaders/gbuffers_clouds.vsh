#version 430 compatibility

void main()
{
    vec4 viewpos = gl_ModelViewMatrix * gl_Vertex;
    gl_Position = gl_ProjectionMatrix * viewpos;
}