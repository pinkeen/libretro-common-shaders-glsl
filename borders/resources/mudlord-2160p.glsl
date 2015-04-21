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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_ATTRIBUTE vec4 LUTTexCoord;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _oColor;
    vec2 _oTex;
    vec2 _otex_border;
    vec2 _scale;
    vec2 _middle;
    vec2 _diff;
    vec2 _dist;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _scale = (OutputSize/vec2( 3.20000000E+02, 2.40000000E+02))/9.00000000E+00;
    _middle = (5.00000000E-01*InputSize)/TextureSize;
    _diff = TexCoord.xy - _middle;
    _oTex = _middle + _diff*_scale;
    _dist = LUTTexCoord.xy - vec2( 4.99989986E-01, 4.99989986E-01);
    _otex_border = vec2( 4.99989986E-01, 4.99989986E-01) + (_dist*OutputSize)/vec2( 3.84000000E+03, 2.16000000E+03);
    gl_Position = _r0006;
    COL0 = COLOR;
    TEX0.xy = _oTex;
    TEX1.xy = _otex_border;
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
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count1;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec4 _TMP8;
float _TMP7;
float _TMP9;
float _TMP6;
float _TMP5;
float _TMP4;
float _TMP3;
float _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
uniform sampler2D bg;
input_dummy _IN1;
float _a0016;
float _a0018;
float _a0020;
float _a0022;
float _a0024;
float _a0026;
vec2 _a0028;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _sp;
    vec2 _p;
    vec2 _i;
    float _c;
    float _t;
    vec4 _mudscape;
    vec4 _frame;
    vec4 _background;
    vec3 _TMP14;
    _sp = TEX0.xy*(TextureSize.xy/InputSize.xy);
    _p = _sp*1.00000000E+01 - vec2( 1.00000000E+01, 1.00000000E+01);
    _t = 9.99999940E-02*float(FrameCount)*-2.00000000E+00;
    _a0016 = _t - _p.x;
    _TMP0 = cos(_a0016);
    _a0018 = _t + _p.y;
    _TMP1 = sin(_a0018);
    _a0020 = _t - _p.y;
    _TMP2 = sin(_a0020);
    _a0022 = _t + _p.x;
    _TMP3 = cos(_a0022);
    _i = _p + vec2(_TMP0 + _TMP1, _TMP2 + _TMP3);
    _a0024 = _i.x + _t;
    _TMP4 = sin(_a0024);
    _a0026 = _i.y + _t;
    _TMP5 = cos(_a0026);
    _a0028 = vec2(_p.x/(_TMP4/1.00000001E-01), _p.y/(_TMP5/1.00000001E-01));
    _TMP6 = length(_a0028);
    _c = 1.00000000E+00 + 1.20000005E+00/_TMP6;
    _TMP9 = inversesqrt(_c);
    _TMP7 = 1.00000000E+00/_TMP9;
    _c = 2.00000000E+00 - _TMP7;
    _TMP14 = vec3(_c*_c*_c*_c, _c*_c*_c*_c, _c*_c*_c*_c);
    _mudscape = vec4(_TMP14.x, _TMP14.y, _TMP14.z, 9.99900000E+03) + vec4( 0.00000000E+00, 3.00000012E-01, 5.00000000E-01, 1.00000000E+00);
    _frame = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP8 = COMPAT_TEXTURE(bg, TEX1.xy);
    _background = vec4(_TMP8.x, _TMP8.y, _TMP8.z, _TMP8.w);
    _ret_0 = _frame + _background.w*(_mudscape - _frame);
    FragColor = _ret_0;
    return;
} 
#endif
