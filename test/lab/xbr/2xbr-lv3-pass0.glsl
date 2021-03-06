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
COMPAT_VARYING     vec2 _texCoord1;
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
    vec2 _texCoord1;
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
    _r0008 = VertexCoord.x*MVPMatrix[0];
    _r0008 = _r0008 + VertexCoord.y*MVPMatrix[1];
    _r0008 = _r0008 + VertexCoord.z*MVPMatrix[2];
    _r0008 = _r0008 + VertexCoord.w*MVPMatrix[3];
    _ps = vec2(1.00000000E+00/TextureSize.x, 1.00000000E+00/TextureSize.y);
    _OUT._t1 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -2.00000000E+00*_ps.y);
    _OUT._t2 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, -_ps.y);
    _OUT._t3 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 0.00000000E+00);
    _OUT._t4 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, _ps.y);
    _OUT._t5 = TexCoord.xxxy + vec4(-_ps.x, 0.00000000E+00, _ps.x, 2.00000000E+00*_ps.y);
    _OUT._t6 = TexCoord.xyyy + vec4(-2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _OUT._t7 = TexCoord.xyyy + vec4(2.00000000E+00*_ps.x, -_ps.y, 0.00000000E+00, _ps.y);
    _ret_0._position1 = _r0008;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    _ret_0._t1 = _OUT._t1;
    _ret_0._t2 = _OUT._t2;
    _ret_0._t3 = _OUT._t3;
    _ret_0._t4 = _OUT._t4;
    _ret_0._t5 = _OUT._t5;
    _ret_0._t6 = _OUT._t6;
    _ret_0._t7 = _OUT._t7;
    gl_Position = _r0008;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    TEX1 = _OUT._t1;
    TEX2 = _OUT._t2;
    TEX3 = _OUT._t3;
    TEX4 = _OUT._t4;
    TEX5 = _OUT._t5;
    TEX6 = _OUT._t6;
    TEX7 = _OUT._t7;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
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
vec4 _TMP37;
vec4 _TMP36;
bvec4 _TMP35;
bvec4 _TMP34;
bvec4 _TMP33;
bvec4 _TMP32;
bvec4 _TMP31;
bvec4 _TMP30;
bvec4 _TMP29;
bvec4 _TMP28;
bvec4 _TMP27;
bvec4 _TMP26;
bvec4 _TMP25;
bvec4 _TMP24;
bvec4 _TMP23;
bvec4 _TMP22;
bvec4 _TMP21;
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
vec4 _r0126;
vec4 _r0136;
vec4 _r0146;
vec4 _r0156;
vec4 _r0166;
vec4 _r0176;
vec4 _TMP187;
vec4 _a0190;
vec4 _TMP193;
vec4 _a0196;
vec4 _TMP199;
vec4 _a0202;
vec4 _TMP205;
vec4 _a0208;
vec4 _TMP211;
vec4 _a0214;
vec4 _TMP217;
vec4 _a0220;
vec4 _TMP223;
vec4 _a0226;
vec4 _TMP229;
vec4 _a0232;
vec4 _TMP235;
vec4 _a0238;
vec4 _TMP241;
vec4 _a0244;
vec4 _TMP247;
vec4 _a0250;
vec4 _TMP253;
vec4 _a0256;
vec4 _TMP259;
vec4 _a0262;
vec4 _TMP265;
vec4 _a0268;
vec4 _TMP271;
vec4 _a0274;
vec4 _TMP277;
vec4 _a0280;
vec4 _TMP281;
vec4 _a0284;
vec4 _TMP285;
vec4 _a0288;
vec4 _TMP289;
vec4 _a0292;
vec4 _TMP293;
vec4 _a0296;
vec4 _TMP299;
vec4 _a0302;
vec4 _TMP303;
vec4 _a0306;
vec4 _TMP307;
vec4 _a0310;
vec4 _TMP311;
vec4 _a0314;
vec4 _TMP315;
vec4 _a0318;
vec4 _TMP319;
vec4 _a0322;
vec4 _TMP323;
vec4 _a0326;
vec4 _TMP327;
vec4 _a0330;
vec4 _TMP331;
vec4 _a0334;
vec4 _TMP335;
vec4 _a0338;
vec4 _TMP339;
vec4 _a0342;
vec4 _TMP343;
vec4 _a0346;
vec4 _TMP347;
vec4 _a0350;
vec4 _TMP351;
vec4 _a0354;
vec4 _TMP355;
vec4 _a0358;
vec4 _r0360;
vec4 _r0362;
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
    bvec4 _edr3_left;
    bvec4 _edr3_up;
    bvec4 _px;
    bvec4 _interp_restriction_lv1;
    bvec4 _interp_restriction_lv2_left;
    bvec4 _interp_restriction_lv2_up;
    bvec4 _interp_restriction_lv3_left;
    bvec4 _interp_restriction_lv3_up;
    bvec2 _px0;
    bvec2 _px1;
    bvec2 _px2;
    bvec2 _px3;
    bvec4 _pct0;
    bvec4 _pct1;
    bvec4 _pct2;
    bvec4 _pct3;
    vec4 _info;
    vec4 _TMP73[4];
    vec4 _TMP74[4];
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
    _r0126.x = dot(_TMP4.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0126.y = dot(_TMP6.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0126.z = dot(_TMP10.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0126.w = dot(_TMP8.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0136.x = dot(_TMP5.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0136.y = dot(_TMP3.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0136.z = dot(_TMP9.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0136.w = dot(_TMP11.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0146.x = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0146.y = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0146.z = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0146.w = dot(_TMP7.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0156.x = dot(_TMP20.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0156.y = dot(_TMP2.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0156.z = dot(_TMP15.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0156.w = dot(_TMP12.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0166.x = dot(_TMP14.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0166.y = dot(_TMP18.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0166.z = dot(_TMP0.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0166.w = dot(_TMP17.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0176.x = dot(_TMP13.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0176.y = dot(_TMP19.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0176.z = dot(_TMP1.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _r0176.w = dot(_TMP16.xyz, vec3( 1.43519993E+01, 2.81760006E+01, 5.47200012E+00));
    _a0190 = _r0126.wxyz - _r0126;
    _TMP187 = abs(_a0190);
    _TMP21 = bvec4(_TMP187.x < 1.50000000E+01, _TMP187.y < 1.50000000E+01, _TMP187.z < 1.50000000E+01, _TMP187.w < 1.50000000E+01);
    _a0196 = _r0126.zwxy - _r0126.yzwx;
    _TMP193 = abs(_a0196);
    _TMP22 = bvec4(_TMP193.x < 1.50000000E+01, _TMP193.y < 1.50000000E+01, _TMP193.z < 1.50000000E+01, _TMP193.w < 1.50000000E+01);
    _a0202 = _r0146 - _r0136.wxyz;
    _TMP199 = abs(_a0202);
    _TMP23 = bvec4(_TMP199.x < 1.50000000E+01, _TMP199.y < 1.50000000E+01, _TMP199.z < 1.50000000E+01, _TMP199.w < 1.50000000E+01);
    _a0208 = _r0126.wxyz - _r0156;
    _TMP205 = abs(_a0208);
    _TMP24 = bvec4(_TMP205.x < 1.50000000E+01, _TMP205.y < 1.50000000E+01, _TMP205.z < 1.50000000E+01, _TMP205.w < 1.50000000E+01);
    _a0214 = _r0126.zwxy - _r0166;
    _TMP211 = abs(_a0214);
    _TMP25 = bvec4(_TMP211.x < 1.50000000E+01, _TMP211.y < 1.50000000E+01, _TMP211.z < 1.50000000E+01, _TMP211.w < 1.50000000E+01);
    _a0220 = _r0146 - _r0136.zwxy;
    _TMP217 = abs(_a0220);
    _TMP26 = bvec4(_TMP217.x < 1.50000000E+01, _TMP217.y < 1.50000000E+01, _TMP217.z < 1.50000000E+01, _TMP217.w < 1.50000000E+01);
    _a0226 = _r0146 - _r0136;
    _TMP223 = abs(_a0226);
    _TMP27 = bvec4(_TMP223.x < 1.50000000E+01, _TMP223.y < 1.50000000E+01, _TMP223.z < 1.50000000E+01, _TMP223.w < 1.50000000E+01);
    _interp_restriction_lv1 = bvec4(_r0146.x != _r0126.w && _r0146.x != _r0126.z && (!_TMP21.x && !_TMP22.x || _TMP23.x && !_TMP24.x && !_TMP25.x || _TMP26.x || _TMP27.x), _r0146.y != _r0126.x && _r0146.y != _r0126.w && (!_TMP21.y && !_TMP22.y || _TMP23.y && !_TMP24.y && !_TMP25.y || _TMP26.y || _TMP27.y), _r0146.z != _r0126.y && _r0146.z != _r0126.x && (!_TMP21.z && !_TMP22.z || _TMP23.z && !_TMP24.z && !_TMP25.z || _TMP26.z || _TMP27.z), _r0146.w != _r0126.z && _r0146.w != _r0126.y && (!_TMP21.w && !_TMP22.w || _TMP23.w && !_TMP24.w && !_TMP25.w || _TMP26.w || _TMP27.w));
    _a0232 = _r0146 - _r0126.yzwx;
    _TMP229 = abs(_a0232);
    _TMP28 = bvec4(_TMP229.x < 1.50000000E+01, _TMP229.y < 1.50000000E+01, _TMP229.z < 1.50000000E+01, _TMP229.w < 1.50000000E+01);
    _a0238 = _r0126.zwxy - _r0136.zwxy;
    _TMP235 = abs(_a0238);
    _TMP29 = bvec4(_TMP235.x < 1.50000000E+01, _TMP235.y < 1.50000000E+01, _TMP235.z < 1.50000000E+01, _TMP235.w < 1.50000000E+01);
    _interp_restriction_lv2_left = bvec4(_r0146.x != _r0136.z && _r0126.y != _r0136.z && (_TMP28.x || _TMP29.x), _r0146.y != _r0136.w && _r0126.z != _r0136.w && (_TMP28.y || _TMP29.y), _r0146.z != _r0136.x && _r0126.w != _r0136.x && (_TMP28.z || _TMP29.z), _r0146.w != _r0136.y && _r0126.x != _r0136.y && (_TMP28.w || _TMP29.w));
    _a0244 = _r0146 - _r0126;
    _TMP241 = abs(_a0244);
    _TMP30 = bvec4(_TMP241.x < 1.50000000E+01, _TMP241.y < 1.50000000E+01, _TMP241.z < 1.50000000E+01, _TMP241.w < 1.50000000E+01);
    _a0250 = _r0126.wxyz - _r0136;
    _TMP247 = abs(_a0250);
    _TMP31 = bvec4(_TMP247.x < 1.50000000E+01, _TMP247.y < 1.50000000E+01, _TMP247.z < 1.50000000E+01, _TMP247.w < 1.50000000E+01);
    _interp_restriction_lv2_up = bvec4(_r0146.x != _r0136.x && _r0126.x != _r0136.x && (_TMP30.x || _TMP31.x), _r0146.y != _r0136.y && _r0126.y != _r0136.y && (_TMP30.y || _TMP31.y), _r0146.z != _r0136.z && _r0126.z != _r0136.z && (_TMP30.z || _TMP31.z), _r0146.w != _r0136.w && _r0126.w != _r0136.w && (_TMP30.w || _TMP31.w));
    _a0256 = _r0126.yzwx - _r0176.wxyz;
    _TMP253 = abs(_a0256);
    _TMP32 = bvec4(_TMP253.x < 1.50000000E+01, _TMP253.y < 1.50000000E+01, _TMP253.z < 1.50000000E+01, _TMP253.w < 1.50000000E+01);
    _a0262 = _r0136.zwxy - _r0166.wxyz;
    _TMP259 = abs(_a0262);
    _TMP33 = bvec4(_TMP259.x < 1.50000000E+01, _TMP259.y < 1.50000000E+01, _TMP259.z < 1.50000000E+01, _TMP259.w < 1.50000000E+01);
    _interp_restriction_lv3_left = bvec4(_r0146.x != _r0166.w && _r0176.w != _r0166.w && (_TMP32.x || _TMP33.x), _r0146.y != _r0166.x && _r0176.x != _r0166.x && (_TMP32.y || _TMP33.y), _r0146.z != _r0166.y && _r0176.y != _r0166.y && (_TMP32.z || _TMP33.z), _r0146.w != _r0166.z && _r0176.z != _r0166.z && (_TMP32.w || _TMP33.w));
    _a0268 = _r0126 - _r0176.zwxy;
    _TMP265 = abs(_a0268);
    _TMP34 = bvec4(_TMP265.x < 1.50000000E+01, _TMP265.y < 1.50000000E+01, _TMP265.z < 1.50000000E+01, _TMP265.w < 1.50000000E+01);
    _a0274 = _r0136 - _r0156.yzwx;
    _TMP271 = abs(_a0274);
    _TMP35 = bvec4(_TMP271.x < 1.50000000E+01, _TMP271.y < 1.50000000E+01, _TMP271.z < 1.50000000E+01, _TMP271.w < 1.50000000E+01);
    _interp_restriction_lv3_up = bvec4(_r0146.x != _r0156.y && _r0176.z != _r0156.y && (_TMP34.x || _TMP35.x), _r0146.y != _r0156.z && _r0176.w != _r0156.z && (_TMP34.y || _TMP35.y), _r0146.z != _r0156.w && _r0176.x != _r0156.w && (_TMP34.z || _TMP35.z), _r0146.w != _r0156.x && _r0176.y != _r0156.x && (_TMP34.w || _TMP35.w));
    _a0280 = _r0146 - _r0136;
    _TMP277 = abs(_a0280);
    _a0284 = _r0146 - _r0136.zwxy;
    _TMP281 = abs(_a0284);
    _a0288 = _r0136.wxyz - _r0176;
    _TMP285 = abs(_a0288);
    _a0292 = _r0136.wxyz - _r0176.yzwx;
    _TMP289 = abs(_a0292);
    _a0296 = _r0126.zwxy - _r0126.wxyz;
    _TMP293 = abs(_a0296);
    _TMP36 = _TMP277 + _TMP281 + _TMP285 + _TMP289 + 4.00000000E+00*_TMP293;
    _a0302 = _r0126.zwxy - _r0126.yzwx;
    _TMP299 = abs(_a0302);
    _a0306 = _r0126.zwxy - _r0166;
    _TMP303 = abs(_a0306);
    _a0310 = _r0126.wxyz - _r0156;
    _TMP307 = abs(_a0310);
    _a0314 = _r0126.wxyz - _r0126;
    _TMP311 = abs(_a0314);
    _a0318 = _r0146 - _r0136.wxyz;
    _TMP315 = abs(_a0318);
    _TMP37 = _TMP299 + _TMP303 + _TMP307 + _TMP311 + 4.00000000E+00*_TMP315;
    _edr = bvec4(_TMP36.x < _TMP37.x && _interp_restriction_lv1.x, _TMP36.y < _TMP37.y && _interp_restriction_lv1.y, _TMP36.z < _TMP37.z && _interp_restriction_lv1.z, _TMP36.w < _TMP37.w && _interp_restriction_lv1.w);
    _a0322 = _r0126.wxyz - _r0136.zwxy;
    _TMP319 = abs(_a0322);
    _a0326 = _r0126.zwxy - _r0136;
    _TMP323 = abs(_a0326);
    _edr_left = bvec4((2.00000000E+00*_TMP319).x <= _TMP323.x && _interp_restriction_lv2_left.x && _edr.x, (2.00000000E+00*_TMP319).y <= _TMP323.y && _interp_restriction_lv2_left.y && _edr.y, (2.00000000E+00*_TMP319).z <= _TMP323.z && _interp_restriction_lv2_left.z && _edr.z, (2.00000000E+00*_TMP319).w <= _TMP323.w && _interp_restriction_lv2_left.w && _edr.w);
    _a0330 = _r0126.wxyz - _r0136.zwxy;
    _TMP327 = abs(_a0330);
    _a0334 = _r0126.zwxy - _r0136;
    _TMP331 = abs(_a0334);
    _edr_up = bvec4(_TMP327.x >= (2.00000000E+00*_TMP331).x && _interp_restriction_lv2_up.x && _edr.x, _TMP327.y >= (2.00000000E+00*_TMP331).y && _interp_restriction_lv2_up.y && _edr.y, _TMP327.z >= (2.00000000E+00*_TMP331).z && _interp_restriction_lv2_up.z && _edr.z, _TMP327.w >= (2.00000000E+00*_TMP331).w && _interp_restriction_lv2_up.w && _edr.w);
    _a0338 = _r0126.wxyz - _r0166.wxyz;
    _TMP335 = abs(_a0338);
    _a0342 = _r0126.zwxy - _r0156.yzwx;
    _TMP339 = abs(_a0342);
    _edr3_left = bvec4((4.00000000E+00*_TMP335).x <= _TMP339.x && _interp_restriction_lv3_left.x && _edr_left.x, (4.00000000E+00*_TMP335).y <= _TMP339.y && _interp_restriction_lv3_left.y && _edr_left.y, (4.00000000E+00*_TMP335).z <= _TMP339.z && _interp_restriction_lv3_left.z && _edr_left.z, (4.00000000E+00*_TMP335).w <= _TMP339.w && _interp_restriction_lv3_left.w && _edr_left.w);
    _a0346 = _r0126.wxyz - _r0166.wxyz;
    _TMP343 = abs(_a0346);
    _a0350 = _r0126.zwxy - _r0156.yzwx;
    _TMP347 = abs(_a0350);
    _edr3_up = bvec4(_TMP343.x >= (4.00000000E+00*_TMP347).x && _interp_restriction_lv3_up.x && _edr_up.x, _TMP343.y >= (4.00000000E+00*_TMP347).y && _interp_restriction_lv3_up.y && _edr_up.y, _TMP343.z >= (4.00000000E+00*_TMP347).z && _interp_restriction_lv3_up.z && _edr_up.z, _TMP343.w >= (4.00000000E+00*_TMP347).w && _interp_restriction_lv3_up.w && _edr_up.w);
    _a0354 = _r0146 - _r0126.wxyz;
    _TMP351 = abs(_a0354);
    _a0358 = _r0146 - _r0126.zwxy;
    _TMP355 = abs(_a0358);
    _px = bvec4(_TMP351.x <= _TMP355.x, _TMP351.y <= _TMP355.y, _TMP351.z <= _TMP355.z, _TMP351.w <= _TMP355.w);
    _pct3 = bvec4(false, false, false, false);
    _pct2 = bvec4(false, false, false, false);
    _pct1 = bvec4(false, false, false, false);
    _pct0 = bvec4(false, false, false, false);
    if (_edr_left.x && !_edr_up.x) { 
        _px0 = bvec2(false, _px.x);
        _px3 = bvec2(_px.y, true);
        if (_edr3_left.x) { 
            _pct0 = bvec4(true, false, false, false);
            _pct3 = bvec4(false, true, false, true);
        } else {
            _pct0 = bvec4(false, true, true, true);
            _pct3 = bvec4(false, false, true, true);
        } 
    } else {
        if (_edr_up.x && !_edr_left.x) { 
            _px0 = bvec2(false, _px.x);
            _px1 = bvec2(!_px.w, false);
            if (_edr3_up.x) { 
                _pct0 = bvec4(true, false, false, false);
                _pct1 = bvec4(false, true, false, true);
            } else {
                _pct0 = bvec4(false, true, true, true);
                _pct1 = bvec4(false, false, true, true);
            } 
        } else {
            if (_edr.x) { 
                _edr3_up.x = false;
                _edr3_left.x = false;
                _px0 = bvec2(false, _px.x);
                _pct0 = bvec4(false, true, false, true);
            } 
        } 
    } 
    if (_edr_left.y && !_edr_up.y) { 
        _px1 = bvec2(false, _px.y);
        _px0 = bvec2(_px.z, true);
        if (_edr3_left.y) { 
            _pct1 = bvec4(true, false, false, false);
            _pct0 = bvec4(false, true, false, true);
        } else {
            _pct1 = bvec4(false, true, true, true);
            _pct0 = bvec4(false, false, true, true);
        } 
    } else {
        if (_edr_up.y && !_edr_left.y) { 
            _px1 = bvec2(false, _px.y);
            _px2 = bvec2(!_px.x, false);
            if (_edr3_up.y) { 
                _pct1 = bvec4(true, false, false, false);
                _pct2 = bvec4(false, true, false, true);
            } else {
                _pct1 = bvec4(false, true, true, true);
                _pct2 = bvec4(false, false, true, true);
            } 
        } else {
            if (_edr.y) { 
                _edr3_up.y = false;
                _edr3_left.y = false;
                _px1 = bvec2(false, _px.y);
                _pct1 = bvec4(false, true, false, true);
            } 
        } 
    } 
    if (_edr_left.z && !_edr_up.z) { 
        _px2 = bvec2(false, _px.z);
        _px1 = bvec2(_px.w, true);
        if (_edr3_left.z) { 
            _pct2 = bvec4(true, false, false, false);
            _pct1 = bvec4(false, true, false, true);
        } else {
            _pct2 = bvec4(false, true, true, true);
            _pct1 = bvec4(false, false, true, true);
        } 
    } else {
        if (_edr_up.z && !_edr_left.z) { 
            _px2 = bvec2(false, _px.z);
            _px3 = bvec2(!_px.y, false);
            if (_edr3_up.z) { 
                _pct2 = bvec4(true, false, false, false);
                _pct3 = bvec4(false, true, false, true);
            } else {
                _pct2 = bvec4(false, true, true, true);
                _pct3 = bvec4(false, false, true, true);
            } 
        } else {
            if (_edr.z) { 
                _edr3_up.z = false;
                _edr3_left.z = false;
                _px2 = bvec2(false, _px.z);
                _pct2 = bvec4(false, true, false, true);
            } 
        } 
    } 
    if (_edr_left.w && !_edr_up.w) { 
        _px3 = bvec2(false, _px.w);
        _px2 = bvec2(_px.x, true);
        if (_edr3_left.w) { 
            _pct3 = bvec4(true, false, false, false);
            _pct2 = bvec4(false, true, false, true);
        } else {
            _pct3 = bvec4(false, true, true, true);
            _pct2 = bvec4(false, false, true, true);
        } 
    } else {
        if (_edr_up.w && !_edr_left.w) { 
            _px3 = bvec2(false, _px.w);
            _px0 = bvec2(!_px.z, false);
            if (_edr3_up.w) { 
                _pct3 = bvec4(true, false, false, false);
                _pct0 = bvec4(false, true, false, true);
            } else {
                _pct3 = bvec4(false, true, true, true);
                _pct0 = bvec4(false, false, true, true);
            } 
        } else {
            if (_edr.w) { 
                _edr3_up.w = false;
                _edr3_left.w = false;
                _px3 = bvec2(false, _px.w);
                _pct3 = bvec4(false, true, false, true);
            } 
        } 
    } 
    _TMP74[0] = vec4(float(_edr3_left.x), float(_edr3_left.y), float(_edr3_left.z), float(_edr3_left.w));
    _TMP74[1] = vec4(float(_edr3_up.x), float(_edr3_up.y), float(_edr3_up.z), float(_edr3_up.w));
    _TMP74[2] = vec4(float(_px0.x), float(_px1.x), float(_px2.x), float(_px3.x));
    _TMP74[3] = vec4(float(_px0.y), float(_px1.y), float(_px2.y), float(_px3.y));
    _r0360 = _TMP74[0] + 2.00000000E+00*_TMP74[1];
    _r0360 = _r0360 + 4.00000000E+00*_TMP74[2];
    _r0360 = _r0360 + 8.00000000E+00*_TMP74[3];
    _TMP73[0] = vec4(float(_pct0.x), float(_pct1.x), float(_pct2.x), float(_pct3.x));
    _TMP73[1] = vec4(float(_pct0.y), float(_pct1.y), float(_pct2.y), float(_pct3.y));
    _TMP73[2] = vec4(float(_pct0.z), float(_pct1.z), float(_pct2.z), float(_pct3.z));
    _TMP73[3] = vec4(float(_pct0.w), float(_pct1.w), float(_pct2.w), float(_pct3.w));
    _r0362 = 1.60000000E+01*_TMP73[0];
    _r0362 = _r0362 + 3.20000000E+01*_TMP73[1];
    _r0362 = _r0362 + 6.40000000E+01*_TMP73[2];
    _r0362 = _r0362 + 1.28000000E+02*_TMP73[3];
    _info = _r0360 + _r0362;
    _ret_0 = _info/vec4( 2.55000000E+02, 2.55000000E+02, 2.55000000E+02, 2.55000000E+02);
    FragColor = _ret_0;
    return;
} 
#endif
