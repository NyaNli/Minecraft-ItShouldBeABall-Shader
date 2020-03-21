#version 430 compatibility

uniform sampler2D texture;

in vec4 color;
in vec4 texpos;
in float notrender;

void main()
{
    if (notrender > 0)
        discard;
    gl_FragColor = texture2D(texture, texpos.xy) * color;
}