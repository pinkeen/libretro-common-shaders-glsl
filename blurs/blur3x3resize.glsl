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
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     vec4 _position1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec4 _position1;
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0006;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _dxdy_scale;
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _dxdy_scale = InputSize/OutputSize;
    _OUT._blur_dxdy = _dxdy_scale/TextureSize;
    _ret_0._position1 = _r0006;
    _ret_0._tex_uv1 = TexCoord.xy;
    _ret_0._blur_dxdy = _OUT._blur_dxdy;
    gl_Position = _r0006;
    TEX0.xy = TexCoord.xy;
    TEX1.xy = _OUT._blur_dxdy;
    return;
    TEX0.xy = _ret_0._tex_uv1;
    TEX1.xy = _ret_0._blur_dxdy;
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
COMPAT_VARYING     vec2 _blur_dxdy;
COMPAT_VARYING     vec2 _tex_uv1;
COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
struct out_vertex {
    vec2 _tex_uv1;
    vec2 _blur_dxdy;
};
float _TMP10;
float _TMP9;
vec4 _TMP11;
uniform sampler2D Texture;
vec3 _TMP16;
vec2 _dx0019;
vec2 _dy0019;
vec2 _sample1_uv0019;
vec2 _sample7_uv0019;
vec3 _sample00019;
vec3 _sample10019;
vec3 _sample20019;
vec3 _sample30019;
vec3 _sample40019;
vec3 _sample50019;
vec3 _sample60019;
vec3 _sample70019;
float _weight_sum_inv0019;
vec3 _sum0019;
vec2 _tex_coords0021;
vec2 _tex_coords0033;
vec2 _tex_coords0039;
vec2 _tex_coords0051;
vec2 _tex_coords0057;
vec2 _tex_coords0069;
float _TMP76;
float _x0077;
float _TMP82;
float _x0083;
vec4 _color0087;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _dx0019 = vec2(TEX1.x, 0.00000000E+00);
    _dy0019 = vec2(0.00000000E+00, TEX1.y);
    _sample1_uv0019 = TEX0.xy - _dy0019;
    _sample7_uv0019 = TEX0.xy + _dy0019;
    _tex_coords0021 = _sample1_uv0019 - _dx0019;
    _TMP11 = COMPAT_TEXTURE(Texture, _tex_coords0021);
    _sample00019 = _TMP11.xyz;
    _TMP11 = COMPAT_TEXTURE(Texture, _sample1_uv0019);
    _sample10019 = _TMP11.xyz;
    _tex_coords0033 = _sample1_uv0019 + _dx0019;
    _TMP11 = COMPAT_TEXTURE(Texture, _tex_coords0033);
    _sample20019 = _TMP11.xyz;
    _tex_coords0039 = TEX0.xy - _dx0019;
    _TMP11 = COMPAT_TEXTURE(Texture, _tex_coords0039);
    _sample30019 = _TMP11.xyz;
    _TMP11 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _sample40019 = _TMP11.xyz;
    _tex_coords0051 = TEX0.xy + _dx0019;
    _TMP11 = COMPAT_TEXTURE(Texture, _tex_coords0051);
    _sample50019 = _TMP11.xyz;
    _tex_coords0057 = _sample7_uv0019 - _dx0019;
    _TMP11 = COMPAT_TEXTURE(Texture, _tex_coords0057);
    _sample60019 = _TMP11.xyz;
    _TMP11 = COMPAT_TEXTURE(Texture, _sample7_uv0019);
    _sample70019 = _TMP11.xyz;
    _tex_coords0069 = _sample7_uv0019 + _dx0019;
    _TMP11 = COMPAT_TEXTURE(Texture, _tex_coords0069);
    _TMP9 = dot(vec2( 1.00000000E+00, 0.00000000E+00), vec2( 1.00000000E+00, 0.00000000E+00));
    _x0077 = -_TMP9*1.27322698E+00;
    _TMP76 = pow(2.71828198E+00, _x0077);
    _TMP10 = dot(vec2( 1.00000000E+00, 1.00000000E+00), vec2( 1.00000000E+00, 1.00000000E+00));
    _x0083 = -_TMP10*1.27322698E+00;
    _TMP82 = pow(2.71828198E+00, _x0083);
    _weight_sum_inv0019 = 1.00000000E+00/(1.00000000E+00 + 4.00000000E+00*(_TMP76 + _TMP82));
    _sum0019 = _sample40019 + _TMP76*(_sample10019 + _sample30019 + _sample50019 + _sample70019) + _TMP82*(_sample00019 + _sample20019 + _sample60019 + _TMP11.xyz);
    _TMP16 = _sum0019*_weight_sum_inv0019;
    _color0087 = vec4(_TMP16.x, _TMP16.y, _TMP16.z, 1.00000000E+00);
    FragColor = _color0087;
    return;
} 
#endif
