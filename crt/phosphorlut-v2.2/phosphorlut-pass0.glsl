// GLSL shader autogenerated by cg2glsl.py.
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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color1;
struct output_dummy {
    vec4 _color1;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
float _placeholder29;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _otexCoord;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0005;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
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
COMPAT_VARYING     float _frame_rotation;
COMPAT_VARYING     vec4 _color;
struct output_dummy {
    vec4 _color;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
float _placeholder35;
};
vec4 _TMP2;
float _TMP1;
float _TMP0;
input_dummy _IN1;
uniform sampler2D PHOSPHOR_LUT;
float _x0008;
float _x0010;
COMPAT_VARYING vec4 TEX0;
 
uniform sampler2D Texture;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    output_dummy _OUT;
    vec2 _LUTeffectiveCoord;
    vec4 _image;
    _x0008 = TEX0.x*TextureSize.x;
    _TMP0 = fract(_x0008);
    _x0010 = TEX0.y*TextureSize.y;
    _TMP1 = fract(_x0010);
    _LUTeffectiveCoord = vec2(_TMP0, _TMP1);
    _image = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP2 = COMPAT_TEXTURE(PHOSPHOR_LUT, _LUTeffectiveCoord);
    _OUT._color = _TMP2*_image;
    FragColor = _OUT._color;
    return;
} 
#endif
