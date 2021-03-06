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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord2;
COMPAT_VARYING     vec4 _color1;
COMPAT_VARYING     vec4 _position1;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _position1;
    vec4 _color1;
    vec2 _texCoord2;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0008;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 COL0;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    out_vertex _OUT;
    vec2 _ps;
    vec2 _texCoord;
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _texCoord = TexCoord.xy + vec2( 1.00000001E-07, 1.00000001E-07);
    _OUT._t1 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = _texCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = _texCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = _texCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord2 = _texCoord;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = _texCoord;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord2;
    TEX1 = _ret_0._t1;
    TEX2 = _ret_0._t2;
    TEX3 = _ret_0._t3;
    TEX4 = _ret_0._t4;
    TEX5 = _ret_0._t5;
    TEX6 = _ret_0._t6;
    TEX7 = _ret_0._t7;
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
COMPAT_VARYING     vec4 _t7;
COMPAT_VARYING     vec4 _t6;
COMPAT_VARYING     vec4 _t5;
COMPAT_VARYING     vec4 _t4;
COMPAT_VARYING     vec4 _t3;
COMPAT_VARYING     vec4 _t2;
COMPAT_VARYING     vec4 _t1;
COMPAT_VARYING     vec2 _texCoord;
COMPAT_VARYING     vec4 _color;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
};
struct out_vertex {
    vec4 _color;
    vec2 _texCoord;
    vec4 _t1;
    vec4 _t2;
    vec4 _t3;
    vec4 _t4;
    vec4 _t5;
    vec4 _t6;
    vec4 _t7;
};
vec4 _ret_0;
vec3 _TMP37;
vec3 _TMP35;
vec3 _TMP33;
vec3 _TMP31;
vec3 _TMP36;
vec3 _TMP34;
vec3 _TMP32;
vec3 _TMP30;
vec4 _TMP29;
vec4 _TMP22;
vec4 _TMP21;
vec4 _TMP43;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
vec4 _TMP15;
vec4 _TMP14;
vec4 _TMP13;
vec4 _TMP12;
vec4 _TMP11;
vec4 _TMP10;
vec4 _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP4;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
vec2 _x0058;
vec4 _r0102;
vec4 _r0112;
vec4 _r0122;
vec4 _r0132;
vec4 _r0142;
vec4 _r0152;
vec4 _x0162;
vec4 _TMP163;
vec4 _x0170;
vec4 _TMP171;
vec4 _x0178;
vec4 _TMP179;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP191;
vec4 _a0194;
vec4 _TMP195;
vec4 _a0198;
vec4 _TMP199;
vec4 _a0202;
vec4 _TMP203;
vec4 _a0206;
vec4 _TMP209;
vec4 _a0212;
vec4 _TMP213;
vec4 _a0216;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP221;
vec4 _a0224;
vec4 _TMP225;
vec4 _a0228;
vec4 _TMP229;
vec4 _a0232;
vec4 _TMP233;
vec4 _a0236;
vec4 _TMP237;
vec4 _a0240;
vec4 _TMP241;
vec4 _a0244;
vec4 _TMP245;
vec4 _a0248;
vec4 _TMP249;
vec4 _a0252;
float _t0258;
float _t0262;
float _t0266;
float _t0270;
vec4 _r0274;
vec4 _TMP283;
vec4 _a0286;
COMPAT_VARYING vec4 TEX0;
COMPAT_VARYING vec4 TEX1;
COMPAT_VARYING vec4 TEX2;
COMPAT_VARYING vec4 TEX3;
COMPAT_VARYING vec4 TEX4;
COMPAT_VARYING vec4 TEX5;
COMPAT_VARYING vec4 TEX6;
COMPAT_VARYING vec4 TEX7;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    bvec4 _edr;
    bvec4 _edr_left;
    bvec4 _edr_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    vec4 _fx;
    vec4 _fx_left;
    vec4 _fx_up;
    vec2 _fp;
    vec4 _fx45;
    vec4 _fx30;
    vec4 _fx60;
    vec4 _maximo;
    vec3 _res;
    float _mx;
    _x0058 = TEX0.xy*TextureSize;
    _fp = fract(_x0058);
    _TMP0 = COMPAT_TEXTURE(Texture, TEX1.xw);
    _TMP1 = COMPAT_TEXTURE(Texture, TEX1.yw);
    _TMP2 = COMPAT_TEXTURE(Texture, TEX1.zw);
    _TMP3 = COMPAT_TEXTURE(Texture, TEX2.xw);
    _TMP4 = COMPAT_TEXTURE(Texture, TEX2.yw);
    _TMP5 = COMPAT_TEXTURE(Texture, TEX2.zw);
    _TMP6 = COMPAT_TEXTURE(Texture, TEX3.xw);
    _TMP7 = COMPAT_TEXTURE(Texture, TEX3.yw);
    _TMP8 = COMPAT_TEXTURE(Texture, TEX3.zw);
    _TMP9 = COMPAT_TEXTURE(Texture, TEX4.xw);
    _TMP10 = COMPAT_TEXTURE(Texture, TEX4.yw);
    _TMP11 = COMPAT_TEXTURE(Texture, TEX4.zw);
    _TMP12 = COMPAT_TEXTURE(Texture, TEX5.xw);
    _TMP13 = COMPAT_TEXTURE(Texture, TEX5.yw);
    _TMP14 = COMPAT_TEXTURE(Texture, TEX5.zw);
    _TMP15 = COMPAT_TEXTURE(Texture, TEX6.xy);
    _TMP16 = COMPAT_TEXTURE(Texture, TEX6.xz);
    _TMP17 = COMPAT_TEXTURE(Texture, TEX6.xw);
    _TMP18 = COMPAT_TEXTURE(Texture, TEX7.xy);
    _TMP19 = COMPAT_TEXTURE(Texture, TEX7.xz);
    _TMP20 = COMPAT_TEXTURE(Texture, TEX7.xw);
    _r0102.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0102.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0102.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0102.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0112.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0122.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0132.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0142.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0152.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _fx = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 1.00000000E+00, 1.00000000E+00, -1.00000000E+00, -1.00000000E+00)*_fp.x;
    _fx_left = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 5.00000000E-01, 2.00000000E+00, -5.00000000E-01, -2.00000000E+00)*_fp.x;
    _fx_up = vec4( 1.00000000E+00, -1.00000000E+00, -1.00000000E+00, 1.00000000E+00)*_fp.y + vec4( 2.00000000E+00, 5.00000000E-01, -2.00000000E+00, -5.00000000E-01)*_fp.x;
    _interp_restriction_lv1 = bvec4(_r0122.x != _r0102.w && _r0122.x != _r0102.z, _r0122.y != _r0102.x && _r0122.y != _r0102.w, _r0122.z != _r0102.y && _r0122.z != _r0102.x, _r0122.w != _r0102.z && _r0122.w != _r0102.y);
    _interp_restriction_lv2_left = bvec4(_r0122.x != _r0112.z && _r0102.y != _r0112.z, _r0122.y != _r0112.w && _r0102.z != _r0112.w, _r0122.z != _r0112.x && _r0102.w != _r0112.x, _r0122.w != _r0112.y && _r0102.x != _r0112.y);
    _interp_restriction_lv2_up = bvec4(_r0122.x != _r0112.x && _r0102.x != _r0112.x, _r0122.y != _r0112.y && _r0102.y != _r0112.y, _r0122.z != _r0112.z && _r0102.z != _r0112.z, _r0122.w != _r0112.w && _r0102.w != _r0112.w);
    _x0162 = ((_fx + vec4( 2.00000003E-01, 2.00000003E-01, 2.00000003E-01, 2.00000003E-01)) - vec4( 1.50000000E+00, 5.00000000E-01, -5.00000000E-01, 5.00000000E-01))/vec4( 4.00000006E-01, 4.00000006E-01, 4.00000006E-01, 4.00000006E-01);
    _TMP43 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0162);
    _TMP163 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP43);
    _x0170 = ((_fx_left + vec4( 1.00000001E-01, 2.00000003E-01, 1.00000001E-01, 2.00000003E-01)) - vec4( 1.00000000E+00, 1.00000000E+00, -5.00000000E-01, 0.00000000E+00))/vec4( 2.00000003E-01, 4.00000006E-01, 2.00000003E-01, 4.00000006E-01);
    _TMP43 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0170);
    _TMP171 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP43);
    _x0178 = ((_fx_up + vec4( 2.00000003E-01, 1.00000001E-01, 2.00000003E-01, 1.00000001E-01)) - vec4( 2.00000000E+00, 0.00000000E+00, -1.00000000E+00, 5.00000000E-01))/vec4( 4.00000006E-01, 2.00000003E-01, 4.00000006E-01, 2.00000003E-01);
    _TMP43 = min(vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0178);
    _TMP179 = max(vec4( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP43);
    _a0190 = _r0122 - _r0112;
    _TMP187 = abs(_a0190);
    _a0194 = _r0122 - _r0112.zwxy;
    _TMP191 = abs(_a0194);
    _a0198 = _r0112.wxyz - _r0152;
    _TMP195 = abs(_a0198);
    _a0202 = _r0112.wxyz - _r0152.yzwx;
    _TMP199 = abs(_a0202);
    _a0206 = _r0102.zwxy - _r0102.wxyz;
    _TMP203 = abs(_a0206);
    _TMP21 = _TMP187 + _TMP191 + _TMP195 + _TMP199 + 4.00000000E+00*_TMP203;
    _a0212 = _r0102.zwxy - _r0102.yzwx;
    _TMP209 = abs(_a0212);
    _a0216 = _r0102.zwxy - _r0142;
    _TMP213 = abs(_a0216);
    _a0220 = _r0102.wxyz - _r0132;
    _TMP217 = abs(_a0220);
    _a0224 = _r0102.wxyz - _r0102;
    _TMP221 = abs(_a0224);
    _a0228 = _r0122 - _r0112.wxyz;
    _TMP225 = abs(_a0228);
    _TMP22 = _TMP209 + _TMP213 + _TMP217 + _TMP221 + 4.00000000E+00*_TMP225;
    _edr = bvec4(_TMP21.x < _TMP22.x && _interp_restriction_lv1.x, _TMP21.y < _TMP22.y && _interp_restriction_lv1.y, _TMP21.z < _TMP22.z && _interp_restriction_lv1.z, _TMP21.w < _TMP22.w && _interp_restriction_lv1.w);
    _a0232 = _r0102.wxyz - _r0112.zwxy;
    _TMP229 = abs(_a0232);
    _a0236 = _r0102.zwxy - _r0112;
    _TMP233 = abs(_a0236);
    _edr_left = bvec4((2.00000000E+00*_TMP229).x <= _TMP233.x && _interp_restriction_lv2_left.x && _edr.x, (2.00000000E+00*_TMP229).y <= _TMP233.y && _interp_restriction_lv2_left.y && _edr.y, (2.00000000E+00*_TMP229).z <= _TMP233.z && _interp_restriction_lv2_left.z && _edr.z, (2.00000000E+00*_TMP229).w <= _TMP233.w && _interp_restriction_lv2_left.w && _edr.w);
    _a0240 = _r0102.wxyz - _r0112.zwxy;
    _TMP237 = abs(_a0240);
    _a0244 = _r0102.zwxy - _r0112;
    _TMP241 = abs(_a0244);
    _edr_up = bvec4(_TMP237.x >= (2.00000000E+00*_TMP241).x && _interp_restriction_lv2_up.x && _edr.x, _TMP237.y >= (2.00000000E+00*_TMP241).y && _interp_restriction_lv2_up.y && _edr.y, _TMP237.z >= (2.00000000E+00*_TMP241).z && _interp_restriction_lv2_up.z && _edr.z, _TMP237.w >= (2.00000000E+00*_TMP241).w && _interp_restriction_lv2_up.w && _edr.w);
    _fx45 = vec4(float(_edr.x), float(_edr.y), float(_edr.z), float(_edr.w))*_TMP163;
    _fx30 = vec4(float(_edr_left.x), float(_edr_left.y), float(_edr_left.z), float(_edr_left.w))*_TMP171;
    _fx60 = vec4(float(_edr_up.x), float(_edr_up.y), float(_edr_up.z), float(_edr_up.w))*_TMP179;
    _a0248 = _r0122 - _r0102.wxyz;
    _TMP245 = abs(_a0248);
    _a0252 = _r0122 - _r0102.zwxy;
    _TMP249 = abs(_a0252);
    _px = bvec4(_TMP245.x <= _TMP249.x, _TMP245.y <= _TMP249.y, _TMP245.z <= _TMP249.z, _TMP245.w <= _TMP249.w);
    _TMP29 = max(_fx30, _fx60);
    _maximo = max(_TMP29, _fx45);
    _t0258 = float(_px.x);
    _TMP30 = _TMP10.xyz + _t0258*(_TMP8.xyz - _TMP10.xyz);
    _TMP31 = _TMP7.xyz + _maximo.x*(_TMP30 - _TMP7.xyz);
    _t0262 = float(_px.y);
    _TMP32 = _TMP8.xyz + _t0262*(_TMP4.xyz - _TMP8.xyz);
    _TMP33 = _TMP7.xyz + _maximo.y*(_TMP32 - _TMP7.xyz);
    _t0266 = float(_px.z);
    _TMP34 = _TMP4.xyz + _t0266*(_TMP6.xyz - _TMP4.xyz);
    _TMP35 = _TMP7.xyz + _maximo.z*(_TMP34 - _TMP7.xyz);
    _t0270 = float(_px.w);
    _TMP36 = _TMP6.xyz + _t0270*(_TMP10.xyz - _TMP6.xyz);
    _TMP37 = _TMP7.xyz + _maximo.w*(_TMP36 - _TMP7.xyz);
    _r0274.x = dot(_TMP31, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0274.y = dot(_TMP33, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0274.z = dot(_TMP35, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0274.w = dot(_TMP37, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _a0286 = _r0274 - _r0122;
    _TMP283 = abs(_a0286);
    _res = _TMP31;
    _mx = _TMP283.x;
    if (_TMP283.y > _TMP283.x) { 
        _res = _TMP33;
        _mx = _TMP283.y;
    } 
    if (_TMP283.z > _mx) { 
        _res = _TMP35;
        _mx = _TMP283.z;
    } 
    if (_TMP283.w > _mx) { 
        _res = _TMP37;
    } 
    _ret_0 = vec4(_res.x, _res.y, _res.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
