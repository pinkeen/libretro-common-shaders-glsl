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
COMPAT_VARYING     vec2 VARtex;
struct data {
    vec2 VARtex;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};
vec4 _oPosition1;
data _oData1;
input_dummy _IN1;
vec4 _r0012;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
 
uniform mat4 MVPMatrix;
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    _r0012 = VertexCoord.x*MVPMatrix[0];
    _r0012 = _r0012 + VertexCoord.y*MVPMatrix[1];
    _r0012 = _r0012 + VertexCoord.z*MVPMatrix[2];
    _r0012 = _r0012 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0012;
    VARtex = TexCoord.xy - vec2(5.00000000E-01/TextureSize.x, 0.00000000E+00);
    gl_Position = _r0012;
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
COMPAT_VARYING     vec2 VARtex;
struct data {
    vec2 VARtex;
};
struct input_dummy {
    vec2 _video_size;
    vec2 VARtexture_size;
    vec2 _output_dummy_size;
    float _frame_count;
};
vec4 _ret_0;
vec3 _TMP4;
float _TMP7;
float _TMP6;
float _TMP5;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
input_dummy _IN1;
data _vertex1;
uniform sampler2D Texture;
vec2 _c0019;
vec2 _c0021;
vec3 _r0027;
vec3 _b0035;
uniform float _NTSC_CRT_GAMMA;
uniform float _NTSC_MONITOR_GAMMA;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    float _one_x;
    vec3 _signal;
    vec3 _sums1;
    _one_x = 1.00000000E+00/TextureSize.x;
    _c0019 = VARtex + vec2(-2.40000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(2.40000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _sums1*vec3( -1.20200002E-05, -1.18846998E-04, -1.18846998E-04);
    _c0019 = VARtex + vec2(-2.30000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(2.30000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -2.21459995E-05, -2.71305995E-04, -2.71305995E-04);
    _c0019 = VARtex + vec2(-2.20000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(2.20000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -1.31549996E-05, -5.02642011E-04, -5.02642011E-04);
    _c0019 = VARtex + vec2(-2.10000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(2.10000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -1.20200002E-05, -9.30832990E-04, -9.30832990E-04);
    _c0019 = VARtex + vec2(-2.00000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(2.00000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -4.99790003E-05, -1.45101303E-03, -1.45101303E-03);
    _c0019 = VARtex + vec2(-1.90000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.90000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -1.13939997E-04, -2.06474401E-03, -2.06474401E-03);
    _c0019 = VARtex + vec2(-1.80000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.80000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -1.22149999E-04, -2.70043197E-03, -2.70043197E-03);
    _c0019 = VARtex + vec2(-1.70000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.70000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -5.61200022E-06, -3.24127590E-03, -3.24127590E-03);
    _c0019 = VARtex + vec2(-1.60000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.60000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.70515996E-04, -3.52494791E-03, -3.52494791E-03);
    _c0019 = VARtex + vec2(-1.50000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.50000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 2.37198998E-04, -3.35028395E-03, -3.35028395E-03);
    _c0019 = VARtex + vec2(-1.40000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.40000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.69640000E-04, -2.49172910E-03, -2.49172910E-03);
    _c0019 = VARtex + vec2(-1.30000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.30000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 2.85688002E-04, -7.21148972E-04, -7.21148972E-04);
    _c0019 = VARtex + vec2(-1.20000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.20000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 9.84573970E-04, 2.16465909E-03, 2.16465909E-03);
    _c0019 = VARtex + vec2(-1.10000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.10000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 2.01868289E-03, 6.31363504E-03, 6.31363504E-03);
    _c0019 = VARtex + vec2(-1.00000000E+01*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(1.00000000E+01*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 2.00227508E-03, 1.17891030E-02, 1.17891030E-02);
    _c0019 = VARtex + vec2(-9.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(9.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -9.09882016E-04, 1.85456593E-02, 1.85456593E-02);
    _c0019 = VARtex + vec2(-8.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(8.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -7.04908092E-03, 2.64143962E-02, 2.64143962E-02);
    _c0019 = VARtex + vec2(-7.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(7.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -1.32228602E-02, 3.51007096E-02, 3.51007096E-02);
    _c0019 = VARtex + vec2(-6.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(6.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( -1.26069309E-02, 4.41965684E-02, 4.41965684E-02);
    _c0019 = VARtex + vec2(-5.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(5.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 2.46085995E-03, 5.32072037E-02, 5.32072037E-02);
    _c0019 = VARtex + vec2(-4.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(4.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 3.58682238E-02, 6.15902767E-02, 6.15902767E-02);
    _c0019 = VARtex + vec2(-3.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(3.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 8.40164497E-02, 6.88036010E-02, 6.88036010E-02);
    _c0019 = VARtex + vec2(-2.00000000E+00*_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(2.00000000E+00*_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.35563493E-01, 7.43561909E-02, 7.43561909E-02);
    _c0019 = VARtex + vec2(-_one_x, 0.00000000E+00);
    _TMP1 = COMPAT_TEXTURE(Texture, _c0019);
    _c0021 = VARtex + vec2(_one_x, 0.00000000E+00);
    _TMP2 = COMPAT_TEXTURE(Texture, _c0021);
    _sums1 = _TMP1.xyz + _TMP2.xyz;
    _signal = _signal + _sums1*vec3( 1.75261274E-01, 7.78565630E-02, 7.78565630E-02);
    _TMP3 = COMPAT_TEXTURE(Texture, VARtex);
    _signal = _signal + _TMP3.xyz*vec3( 1.90176547E-01, 7.90523961E-02, 7.90523961E-02);
    _r0027.x = dot(vec3( 1.00000000E+00, 9.55999970E-01, 6.20999992E-01), _signal);
    _r0027.y = dot(vec3( 1.00000000E+00, -2.72000015E-01, -6.47400022E-01), _signal);
    _r0027.z = dot(vec3( 1.00000000E+00, -1.10599995E+00, 1.70459998E+00), _signal);
    _b0035 = vec3(_NTSC_CRT_GAMMA/_NTSC_MONITOR_GAMMA, _NTSC_CRT_GAMMA/_NTSC_MONITOR_GAMMA, _NTSC_CRT_GAMMA/_NTSC_MONITOR_GAMMA);
    _TMP5 = pow(_r0027.x, _b0035.x);
    _TMP6 = pow(_r0027.y, _b0035.y);
    _TMP7 = pow(_r0027.z, _b0035.z);
    _TMP4 = vec3(_TMP5, _TMP6, _TMP7);
    _ret_0 = vec4(_TMP4.x, _TMP4.y, _TMP4.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
