// barrel distortion only shader from davej
// http://blog.petrockblock.com/forums/topic/help-with-opelgl-barrel-distortion/#post-106535

/* COMPATIBILITY
   - GLSL compilers
*/

/*
    barrel-distortion

    Copyright (C) 2015 davej

    This program is free software; you can redistribute it and/or modify it
    under the terms of the GNU General Public License as published by the Free
    Software Foundation; either version 2 of the License, or (at your option)
    any later version.
*/

#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

uniform COMPAT_PRECISION mat4 MVPMatrix;
COMPAT_ATTRIBUTE mediump vec4 VertexCoord;
COMPAT_ATTRIBUTE mediump vec2 TexCoord;

COMPAT_VARYING mediump vec2 TEX0;

void main()
{
TEX0 = TexCoord;
gl_Position = MVPMatrix * VertexCoord;
}
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

uniform sampler2D Texture;
uniform COMPAT_PRECISION vec2 InputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
varying vec2 TEX0;

const mediump float BARREL_DISTORTION = 0.25;
const mediump float rescale = 1.0 - (0.25 * BARREL_DISTORTION);

void main()
{
vec2 scale = TextureSize / InputSize;
vec2 tex0 = TEX0 * scale;
vec2 texcoord = tex0 - vec2(0.5);
float rsq = texcoord.x * texcoord.x + texcoord.y * texcoord.y;
texcoord = texcoord + (texcoord * (BARREL_DISTORTION * rsq));
texcoord *= rescale;

if (abs(texcoord.x) > 0.5 || abs(texcoord.y) > 0.5)
FragColor = vec4(0.0);
else
{
texcoord += vec2(0.5);
texcoord /= scale;
vec3 colour = COMPAT_TEXTURE(Texture, texcoord).rgb;

FragColor = vec4(colour,1.0);
}
}
#endif
