#version 430 compatibility

uniform sampler2D texture;
uniform sampler2D lightmap;

in vec4 color;
in vec4 texpos;
in vec4 lmpos;

void main()
{
    gl_FragColor = texture2D(texture, texpos.xy) * texture2D(lightmap, lmpos.xy) * color;
}