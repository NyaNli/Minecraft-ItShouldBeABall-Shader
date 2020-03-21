#version 430 compatibility

in vec4 color;
in float notrender;

void main()
{
    if (notrender > 0)
        discard;
    gl_FragColor = color;
}