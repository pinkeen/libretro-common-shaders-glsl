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
vec4 _ret_0;
vec3 _TMP1;
float _TMP16;
float _TMP15;
float _TMP14;
vec4 _TMP17;
vec3 _TMP19;
float _TMP4;
float _TMP3;
float _TMP2;
uniform sampler2D Texture;
vec3 _TMP26;
float _texel1to2ratio0029;
vec2 _sample1R_texel_offset0029;
vec2 _sample2d_texel_offset0029;
float _w10029;
float _w20029;
float _weight_sum_inv0029;
vec2 _dxdy_mirror_x0029;
vec2 _dxdy_mirror_y0029;
vec2 _dxdy_mirror_xy0029;
vec3 _sum0029;
float _TMP30;
float _TMP34;
float _TMP40;
float _x0041;
float _TMP46;
float _x0047;
float _TMP52;
float _x0053;
vec4 _TMP56;
vec4 _TMP74;
vec2 _tex_coords0075;
vec4 _TMP92;
vec2 _tex_coords0093;
vec4 _TMP110;
vec2 _tex_coords0111;
vec4 _TMP128;
vec2 _tex_coords0129;
vec4 _TMP146;
vec2 _tex_coords0147;
vec4 _TMP164;
vec2 _tex_coords0165;
vec4 _TMP182;
vec2 _tex_coords0183;
vec4 _TMP200;
vec2 _tex_coords0201;
vec4 _color0219;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _TMP30 = pow(2.71828198E+00, -5.15794277E-01);
    _TMP34 = pow(2.71828198E+00, -2.06317711E+00);
    _texel1to2ratio0029 = _TMP34/(_TMP30 + _TMP34);
    _sample1R_texel_offset0029 = vec2( 1.00000000E+00, 0.00000000E+00) + vec2(_texel1to2ratio0029, 0.00000000E+00);
    _sample2d_texel_offset0029 = vec2( 1.00000000E+00, 1.00000000E+00) + vec2(_texel1to2ratio0029, _texel1to2ratio0029);
    _TMP2 = dot(vec2( 1.00000000E+00, 1.00000000E+00), vec2( 1.00000000E+00, 1.00000000E+00));
    _x0041 = -_TMP2*5.15794277E-01;
    _TMP40 = pow(2.71828198E+00, _x0041);
    _TMP3 = dot(vec2( 2.00000000E+00, 1.00000000E+00), vec2( 2.00000000E+00, 1.00000000E+00));
    _x0047 = -_TMP3*5.15794277E-01;
    _TMP46 = pow(2.71828198E+00, _x0047);
    _TMP4 = dot(vec2( 2.00000000E+00, 2.00000000E+00), vec2( 2.00000000E+00, 2.00000000E+00));
    _x0053 = -_TMP4*5.15794277E-01;
    _TMP52 = pow(2.71828198E+00, _x0053);
    _w10029 = _TMP30 + _TMP34;
    _w20029 = _TMP40 + 2.00000000E+00*_TMP46 + _TMP52;
    _weight_sum_inv0029 = 1.00000000E+00/(1.00000000E+00 + 4.00000000E+00*(_w10029 + _w20029));
    _dxdy_mirror_x0029 = TEX1.xy*vec2( -1.00000000E+00, 1.00000000E+00);
    _dxdy_mirror_y0029 = TEX1.xy*vec2( 1.00000000E+00, -1.00000000E+00);
    _dxdy_mirror_xy0029 = -TEX1.xy;
    _TMP17 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP56 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0075 = TEX0.xy + TEX1.xy*_sample1R_texel_offset0029;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0075);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP74 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0093 = TEX0.xy + TEX1.xy*_sample1R_texel_offset0029.yx;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0093);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP92 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0111 = TEX0.xy - TEX1.xy*_sample1R_texel_offset0029;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0111);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP110 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0129 = TEX0.xy - TEX1.xy*_sample1R_texel_offset0029.yx;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0129);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP128 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0147 = TEX0.xy + TEX1.xy*_sample2d_texel_offset0029;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0147);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP146 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0165 = TEX0.xy + _dxdy_mirror_x0029*_sample2d_texel_offset0029;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0165);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP164 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0183 = TEX0.xy + _dxdy_mirror_y0029*_sample2d_texel_offset0029;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0183);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP182 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _tex_coords0201 = TEX0.xy + _dxdy_mirror_xy0029*_sample2d_texel_offset0029;
    _TMP17 = COMPAT_TEXTURE(Texture, _tex_coords0201);
    _TMP14 = pow(_TMP17.x, 2.20000005E+00);
    _TMP15 = pow(_TMP17.y, 2.20000005E+00);
    _TMP16 = pow(_TMP17.z, 2.20000005E+00);
    _TMP19 = vec3(_TMP14, _TMP15, _TMP16);
    _TMP200 = vec4(_TMP19.x, _TMP19.y, _TMP19.z, _TMP17.w);
    _sum0029 = _TMP56.xyz + _w10029*(_TMP74.xyz + _TMP92.xyz + _TMP110.xyz + _TMP128.xyz);
    _sum0029 = _sum0029 + _w20029*(_TMP200.xyz + _TMP182.xyz + _TMP164.xyz + _TMP146.xyz);
    _TMP26 = _sum0029*_weight_sum_inv0029;
    _color0219 = vec4(_TMP26.x, _TMP26.y, _TMP26.z, 1.00000000E+00);
    _TMP14 = pow(_color0219.x, 4.54545438E-01);
    _TMP15 = pow(_color0219.y, 4.54545438E-01);
    _TMP16 = pow(_color0219.z, 4.54545438E-01);
    _TMP1 = vec3(_TMP14, _TMP15, _TMP16);
    _ret_0 = vec4(_TMP1.x, _TMP1.y, _TMP1.z, _color0219.w);
    FragColor = _ret_0;
    return;
} 
#endif
