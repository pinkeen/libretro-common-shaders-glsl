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
COMPAT_VARYING     vec2 VARt1;
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
    vec2 VARt1;
};
out_vertex _ret_0;
input_dummy _IN1;
vec4 _r0076;
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
    out_vertex _OUT;
    _r0076 = VertexCoord.x*MVPMatrix[0];
    _r0076 = _r0076 + VertexCoord.y*MVPMatrix[1];
    _r0076 = _r0076 + VertexCoord.z*MVPMatrix[2];
    _r0076 = _r0076 + VertexCoord.w*MVPMatrix[3];
    _OUT.VARt1 = 1.00000000E+00/TextureSize;
    _ret_0._position1 = _r0076;
    _ret_0._color1 = COLOR;
    _ret_0._texCoord1 = TexCoord.xy;
    VARt1 = _OUT.VARt1;
    gl_Position = _r0076;
    COL0 = COLOR;
    TEX0.xy = TexCoord.xy;
    return;
    COL0 = _ret_0._color1;
    TEX0.xy = _ret_0._texCoord1;
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
COMPAT_VARYING     vec2 VARt1;
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
    vec2 VARt1;
};
vec3 _ret_0;
float _TMP40;
float _TMP39;
float _TMP50;
float _TMP49;
float _TMP48;
float _TMP47;
vec4 _TMP36;
vec4 _TMP35;
vec4 _TMP34;
vec4 _TMP33;
vec4 _TMP32;
vec4 _TMP31;
vec4 _TMP30;
vec4 _TMP29;
float _TMP28;
float _TMP27;
vec4 _TMP24;
vec4 _TMP23;
vec4 _TMP22;
vec4 _TMP21;
vec4 _TMP20;
vec4 _TMP19;
vec4 _TMP18;
vec4 _TMP17;
vec4 _TMP16;
float _TMP3;
float _TMP2;
float _TMP41;
out_vertex _VAR1;
uniform sampler2D Texture;
float _TMP65;
float _TMP69;
float _TMP73;
float _TMP77;
float _TMP81;
float _TMP85;
float _TMP89;
float _TMP93;
float _TMP97;
float _TMP101;
float _TMP105;
float _TMP109;
vec2 _c0116;
vec2 _c0118;
vec2 _c0120;
vec2 _c0122;
vec2 _c0124;
vec2 _c0126;
vec2 _c0128;
vec2 _c0130;
float _TMP133;
vec3 _v0134;
float _TMP137;
vec3 _v0138;
float _TMP141;
vec3 _v0142;
float _TMP145;
vec3 _v0146;
vec4 _TMP149;
vec4 _x0150;
float _TMP163;
vec3 _v0164;
float _TMP167;
vec3 _v0168;
float _TMP171;
vec3 _v0172;
float _TMP175;
vec3 _v0176;
vec4 _TMP179;
vec4 _x0180;
vec3 _r0192;
vec3 _r0194;
vec2 _c0200;
vec2 _c0202;
vec2 _c0204;
vec2 _c0206;
vec2 _c0208;
vec2 _c0210;
vec2 _c0212;
vec2 _c0214;
float _TMP217;
vec3 _v0218;
float _TMP221;
vec3 _v0222;
float _TMP225;
vec3 _v0226;
float _TMP229;
vec3 _v0230;
vec4 _TMP233;
vec4 _x0234;
float _TMP247;
vec3 _v0248;
float _TMP251;
vec3 _v0252;
float _TMP255;
vec3 _v0256;
float _TMP259;
vec3 _v0260;
vec4 _TMP263;
vec4 _x0264;
vec3 _r0276;
vec3 _r0278;
COMPAT_VARYING vec4 TEX0;
int _steps;
float _cwght;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec4 _wghtA;
    vec4 _wghtB;
    vec3 _result;
    float _norm;
    int _x1;
    int _y1;
    float _TMP58[13];
    _TMP41 = floor(-2.00000000E+00);
    _TMP2 = -_TMP41;
    _steps = int(_TMP2);
    _TMP3 = max(1.00000000E+00, 6.35170269E+00);
    _cwght = 1.00000000E+00 + 2.50000000E-01*_TMP3;
    _TMP65 = pow(2.71828198E+00, -5.00000000E-01);
    _TMP69 = pow(2.71828198E+00, -2.00000000E+00);
    _TMP73 = pow(2.71828198E+00, -4.50000000E+00);
    _TMP77 = pow(2.71828198E+00, -8.00000000E+00);
    _TMP81 = pow(2.71828198E+00, -1.25000000E+01);
    _TMP85 = pow(2.71828198E+00, -1.80000000E+01);
    _TMP89 = pow(2.71828198E+00, -2.45000000E+01);
    _TMP93 = pow(2.71828198E+00, -3.20000000E+01);
    _TMP97 = pow(2.71828198E+00, -4.05000000E+01);
    _TMP101 = pow(2.71828198E+00, -5.00000000E+01);
    _TMP105 = pow(2.71828198E+00, -6.05000000E+01);
    _TMP109 = pow(2.71828198E+00, -7.20000000E+01);
    _TMP58[0] = 1.00000000E+00;
    _TMP58[1] = _TMP65;
    _TMP58[2] = _TMP69;
    _TMP58[3] = _TMP73;
    _TMP58[4] = _TMP77;
    _TMP58[5] = _TMP81;
    _TMP58[6] = _TMP85;
    _TMP58[7] = _TMP89;
    _TMP58[8] = _TMP93;
    _TMP58[9] = _TMP97;
    _TMP58[10] = _TMP101;
    _TMP58[11] = _TMP105;
    _TMP58[12] = _TMP109;
    _TMP16 = COMPAT_TEXTURE(Texture, TEX0.xy);
    _result = _cwght*_TMP16.xyz;
    _norm = _cwght;
    _x1 = 1;
    for (; _x1 <= _steps; _x1 = _x1 + 1) { 
        _c0116 = TEX0.xy + vec2(float(_x1), 0.00000000E+00)*VARt1;
        _TMP17 = COMPAT_TEXTURE(Texture, _c0116);
        _c0118 = TEX0.xy + vec2(float(-_x1), 0.00000000E+00)*VARt1;
        _TMP18 = COMPAT_TEXTURE(Texture, _c0118);
        _c0120 = TEX0.xy + vec2(0.00000000E+00, float(_x1))*VARt1;
        _TMP19 = COMPAT_TEXTURE(Texture, _c0120);
        _c0122 = TEX0.xy + vec2(0.00000000E+00, float(-_x1))*VARt1;
        _TMP20 = COMPAT_TEXTURE(Texture, _c0122);
        _c0124 = TEX0.xy + vec2(float(_x1), float(_x1))*VARt1;
        _TMP21 = COMPAT_TEXTURE(Texture, _c0124);
        _c0126 = TEX0.xy + vec2(float(_x1), float(-_x1))*VARt1;
        _TMP22 = COMPAT_TEXTURE(Texture, _c0126);
        _c0128 = TEX0.xy + vec2(float(-_x1), float(_x1))*VARt1;
        _TMP23 = COMPAT_TEXTURE(Texture, _c0128);
        _c0130 = TEX0.xy + vec2(float(-_x1), float(-_x1))*VARt1;
        _TMP24 = COMPAT_TEXTURE(Texture, _c0130);
        _v0134 = _TMP16.xyz - _TMP17.xyz;
        _TMP133 = dot(_v0134, _v0134);
        _v0138 = _TMP16.xyz - _TMP18.xyz;
        _TMP137 = dot(_v0138, _v0138);
        _v0142 = _TMP16.xyz - _TMP19.xyz;
        _TMP141 = dot(_v0142, _v0142);
        _v0146 = _TMP16.xyz - _TMP20.xyz;
        _TMP145 = dot(_v0146, _v0146);
        _x0150 = vec4(_TMP133, _TMP137, _TMP141, _TMP145)/-2.25000009E-02;
        _TMP47 = pow(2.71828198E+00, _x0150.x);
        _TMP48 = pow(2.71828198E+00, _x0150.y);
        _TMP49 = pow(2.71828198E+00, _x0150.z);
        _TMP50 = pow(2.71828198E+00, _x0150.w);
        _TMP149 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
        _wghtA = _TMP58[_x1]*_TMP149;
        _v0164 = _TMP16.xyz - _TMP21.xyz;
        _TMP163 = dot(_v0164, _v0164);
        _v0168 = _TMP16.xyz - _TMP22.xyz;
        _TMP167 = dot(_v0168, _v0168);
        _v0172 = _TMP16.xyz - _TMP23.xyz;
        _TMP171 = dot(_v0172, _v0172);
        _v0176 = _TMP16.xyz - _TMP24.xyz;
        _TMP175 = dot(_v0176, _v0176);
        _x0180 = vec4(_TMP163, _TMP167, _TMP171, _TMP175)/-2.25000009E-02;
        _TMP47 = pow(2.71828198E+00, _x0180.x);
        _TMP48 = pow(2.71828198E+00, _x0180.y);
        _TMP49 = pow(2.71828198E+00, _x0180.z);
        _TMP50 = pow(2.71828198E+00, _x0180.w);
        _TMP179 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
        _wghtB = (_TMP58[_x1]*_TMP58[_x1])*_TMP179;
        _r0192 = _wghtA.x*_TMP17.xyz;
        _r0192 = _r0192 + _wghtA.y*_TMP18.xyz;
        _r0192 = _r0192 + _wghtA.z*_TMP19.xyz;
        _r0192 = _r0192 + _wghtA.w*_TMP20.xyz;
        _r0194 = _wghtB.x*_TMP21.xyz;
        _r0194 = _r0194 + _wghtB.y*_TMP22.xyz;
        _r0194 = _r0194 + _wghtB.z*_TMP23.xyz;
        _r0194 = _r0194 + _wghtB.w*_TMP24.xyz;
        _result = _result + _r0192 + _r0194;
        _TMP27 = dot(_wghtA, vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
        _TMP28 = dot(_wghtB, vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
        _norm = _norm + _TMP27 + _TMP28;
        _y1 = 1;
        for (; _y1 < _x1; _y1 = _y1 + 1) { 
            _c0200 = TEX0.xy + vec2(float(_x1), float(_y1))*VARt1;
            _TMP29 = COMPAT_TEXTURE(Texture, _c0200);
            _c0202 = TEX0.xy + vec2(float(_x1), float(-_y1))*VARt1;
            _TMP30 = COMPAT_TEXTURE(Texture, _c0202);
            _c0204 = TEX0.xy + vec2(float(-_x1), float(_y1))*VARt1;
            _TMP31 = COMPAT_TEXTURE(Texture, _c0204);
            _c0206 = TEX0.xy + vec2(float(-_x1), float(-_y1))*VARt1;
            _TMP32 = COMPAT_TEXTURE(Texture, _c0206);
            _c0208 = TEX0.xy + vec2(float(_y1), float(_x1))*VARt1;
            _TMP33 = COMPAT_TEXTURE(Texture, _c0208);
            _c0210 = TEX0.xy + vec2(float(_y1), float(-_x1))*VARt1;
            _TMP34 = COMPAT_TEXTURE(Texture, _c0210);
            _c0212 = TEX0.xy + vec2(float(-_y1), float(_x1))*VARt1;
            _TMP35 = COMPAT_TEXTURE(Texture, _c0212);
            _c0214 = TEX0.xy + vec2(float(-_y1), float(-_x1))*VARt1;
            _TMP36 = COMPAT_TEXTURE(Texture, _c0214);
            _v0218 = _TMP16.xyz - _TMP29.xyz;
            _TMP217 = dot(_v0218, _v0218);
            _v0222 = _TMP16.xyz - _TMP30.xyz;
            _TMP221 = dot(_v0222, _v0222);
            _v0226 = _TMP16.xyz - _TMP31.xyz;
            _TMP225 = dot(_v0226, _v0226);
            _v0230 = _TMP16.xyz - _TMP32.xyz;
            _TMP229 = dot(_v0230, _v0230);
            _x0234 = vec4(_TMP217, _TMP221, _TMP225, _TMP229)/-2.25000009E-02;
            _TMP47 = pow(2.71828198E+00, _x0234.x);
            _TMP48 = pow(2.71828198E+00, _x0234.y);
            _TMP49 = pow(2.71828198E+00, _x0234.z);
            _TMP50 = pow(2.71828198E+00, _x0234.w);
            _TMP233 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
            _wghtA = (_TMP58[_x1]*_TMP58[_y1])*_TMP233;
            _v0248 = _TMP16.xyz - _TMP33.xyz;
            _TMP247 = dot(_v0248, _v0248);
            _v0252 = _TMP16.xyz - _TMP34.xyz;
            _TMP251 = dot(_v0252, _v0252);
            _v0256 = _TMP16.xyz - _TMP35.xyz;
            _TMP255 = dot(_v0256, _v0256);
            _v0260 = _TMP16.xyz - _TMP36.xyz;
            _TMP259 = dot(_v0260, _v0260);
            _x0264 = vec4(_TMP247, _TMP251, _TMP255, _TMP259)/-2.25000009E-02;
            _TMP47 = pow(2.71828198E+00, _x0264.x);
            _TMP48 = pow(2.71828198E+00, _x0264.y);
            _TMP49 = pow(2.71828198E+00, _x0264.z);
            _TMP50 = pow(2.71828198E+00, _x0264.w);
            _TMP263 = vec4(_TMP47, _TMP48, _TMP49, _TMP50);
            _wghtB = (_TMP58[_y1]*_TMP58[_x1])*_TMP263;
            _r0276 = _wghtA.x*_TMP29.xyz;
            _r0276 = _r0276 + _wghtA.y*_TMP30.xyz;
            _r0276 = _r0276 + _wghtA.z*_TMP31.xyz;
            _r0276 = _r0276 + _wghtA.w*_TMP32.xyz;
            _r0278 = _wghtB.x*_TMP33.xyz;
            _r0278 = _r0278 + _wghtB.y*_TMP34.xyz;
            _r0278 = _r0278 + _wghtB.z*_TMP35.xyz;
            _r0278 = _r0278 + _wghtB.w*_TMP36.xyz;
            _result = _result + _r0276 + _r0278;
            _TMP39 = dot(_wghtA, vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
            _TMP40 = dot(_wghtB, vec4( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00, 1.00000000E+00));
            _norm = _norm + _TMP39 + _TMP40;
        } 
    } 
    _ret_0 = _result/_norm;
    FragColor.xyz = _ret_0;
    return;
} 
#endif
