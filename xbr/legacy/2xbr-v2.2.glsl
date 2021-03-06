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
};
vec4 _oPosition1;
vec4 _r0006;
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
    _r0006 = VertexCoord.x*MVPMatrix[0];
    _r0006 = _r0006 + VertexCoord.y*MVPMatrix[1];
    _r0006 = _r0006 + VertexCoord.z*MVPMatrix[2];
    _r0006 = _r0006 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0006;
    _oColor = COLOR;
    _otexCoord = TexCoord.xy;
    gl_Position = _r0006;
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
};
vec3 _TMP28;
vec3 _TMP30;
vec3 _TMP29;
vec4 _TMP24;
vec4 _TMP23;
vec4 _TMP22;
vec4 _TMP21;
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
vec2 _c0038;
vec2 _c0040;
vec2 _c0042;
vec2 _c0044;
vec2 _c0048;
vec2 _c0050;
vec2 _c0052;
vec2 _c0054;
vec2 _c0056;
vec2 _c0058;
vec2 _c0060;
vec2 _c0062;
vec2 _c0064;
vec2 _c0066;
vec2 _c0068;
vec2 _c0070;
vec2 _c0072;
vec2 _c0074;
vec2 _c0076;
vec2 _c0078;
vec2 _c0080;
vec2 _c0082;
vec2 _c0084;
vec2 _c0086;
float _TMP87;
float _TMP91;
float _TMP95;
float _TMP99;
float _TMP103;
float _TMP107;
float _TMP111;
float _TMP115;
float _TMP119;
float _TMP123;
float _TMP127;
float _TMP131;
float _TMP135;
float _TMP139;
float _TMP143;
float _TMP147;
float _TMP151;
float _TMP155;
float _TMP159;
float _TMP163;
float _TMP167;
float _TMP171;
float _TMP175;
float _TMP179;
float _TMP183;
COMPAT_VARYING vec4 TEX0;
 
uniform int FrameDirection;
uniform int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _ps;
    vec2 _dx;
    vec2 _dy;
    vec2 _pixcoord;
    vec2 _fp;
    vec2 _d11;
    vec3 _E[4];
    output_dummy _OUT;
    _ps = vec2(9.99899983E-01/TextureSize.x, 9.99899983E-01/TextureSize.y);
    _dx = vec2(_ps.x, 0.00000000E+00);
    _dy = vec2(0.00000000E+00, _ps.y);
    _pixcoord = TEX0.xy/_ps;
    _fp = fract(_pixcoord);
    _d11 = TEX0.xy - _fp*_ps;
    _c0038 = (_d11 - _dx) - _dy;
    _TMP0 = COMPAT_TEXTURE(Texture, _c0038);
    _c0040 = _d11 - _dy;
    _TMP1 = COMPAT_TEXTURE(Texture, _c0040);
    _c0042 = (_d11 + _dx) - _dy;
    _TMP2 = COMPAT_TEXTURE(Texture, _c0042);
    _c0044 = _d11 - _dx;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0044);
    _TMP4 = COMPAT_TEXTURE(Texture, _d11);
    _c0048 = _d11 + _dx;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0048);
    _c0050 = (_d11 - _dx) + _dy;
    _TMP6 = COMPAT_TEXTURE(Texture, _c0050);
    _c0052 = _d11 + _dy;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0052);
    _c0054 = _d11 + _dx + _dy;
    _TMP8 = COMPAT_TEXTURE(Texture, _c0054);
    _c0056 = (((_d11 - _dx) - _dx) - _dy) - _dy;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0056);
    _c0058 = ((_d11 + _dx + _dx) - _dy) - _dy;
    _TMP10 = COMPAT_TEXTURE(Texture, _c0058);
    _c0060 = ((_d11 - _dx) - _dx) + _dy + _dy;
    _TMP11 = COMPAT_TEXTURE(Texture, _c0060);
    _c0062 = _d11 + _dx + _dx + _dy + _dy;
    _TMP12 = COMPAT_TEXTURE(Texture, _c0062);
    _c0064 = ((_d11 - _dx) - _dy) - _dy;
    _TMP13 = COMPAT_TEXTURE(Texture, _c0064);
    _c0066 = (_d11 - _dy) - _dy;
    _TMP14 = COMPAT_TEXTURE(Texture, _c0066);
    _c0068 = ((_d11 + _dx) - _dy) - _dy;
    _TMP15 = COMPAT_TEXTURE(Texture, _c0068);
    _c0070 = ((_d11 - _dx) - _dx) - _dy;
    _TMP16 = COMPAT_TEXTURE(Texture, _c0070);
    _c0072 = (_d11 - _dx) - _dx;
    _TMP17 = COMPAT_TEXTURE(Texture, _c0072);
    _c0074 = ((_d11 - _dx) - _dx) + _dy;
    _TMP18 = COMPAT_TEXTURE(Texture, _c0074);
    _c0076 = (_d11 + _dx + _dx) - _dy;
    _TMP19 = COMPAT_TEXTURE(Texture, _c0076);
    _c0078 = _d11 + _dx + _dx;
    _TMP20 = COMPAT_TEXTURE(Texture, _c0078);
    _c0080 = _d11 + _dx + _dx + _dy;
    _TMP21 = COMPAT_TEXTURE(Texture, _c0080);
    _c0082 = (_d11 - _dx) + _dy + _dy;
    _TMP22 = COMPAT_TEXTURE(Texture, _c0082);
    _c0084 = _d11 + _dy + _dy;
    _TMP23 = COMPAT_TEXTURE(Texture, _c0084);
    _c0086 = _d11 + _dx + _dy + _dy;
    _TMP24 = COMPAT_TEXTURE(Texture, _c0086);
    _E[3] = _TMP4.xyz;
    _E[2] = _TMP4.xyz;
    _E[1] = _TMP4.xyz;
    _E[0] = _TMP4.xyz;
    _TMP87 = dot(_TMP0.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP91 = dot(_TMP1.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP95 = dot(_TMP2.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP99 = dot(_TMP3.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP103 = dot(_TMP4.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP107 = dot(_TMP5.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP111 = dot(_TMP6.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP115 = dot(_TMP7.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP119 = dot(_TMP8.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP123 = dot(_TMP9.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP127 = dot(_TMP10.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP131 = dot(_TMP11.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP135 = dot(_TMP12.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP139 = dot(_TMP13.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP143 = dot(_TMP14.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP147 = dot(_TMP15.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP151 = dot(_TMP16.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP155 = dot(_TMP17.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP159 = dot(_TMP18.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP163 = dot(_TMP19.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP167 = dot(_TMP20.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP171 = dot(_TMP21.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP175 = dot(_TMP22.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP179 = dot(_TMP23.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    _TMP183 = dot(_TMP24.xyz, vec3( 6.55360000E+04, 2.55000000E+02, 1.00000000E+00));
    if (_TMP103 != _TMP115 && _TMP115 == _TMP107 && (_TMP103 != _TMP119 && (_TMP103 != _TMP91 || _TMP103 != _TMP99 || _TMP91 == _TMP147 && _TMP99 == _TMP159 || _TMP107 != _TMP91 && _TMP107 != _TMP95 || _TMP115 != _TMP99 && _TMP115 != _TMP111) || _TMP103 == _TMP111 && (_TMP119 == _TMP115 || _TMP103 == _TMP99 || _TMP115 != _TMP99) || _TMP103 == _TMP95 && (_TMP119 == _TMP115 || _TMP103 == _TMP91 || _TMP107 != _TMP91))) { 
        if (_TMP103 == _TMP95 && _TMP103 == _TMP99 && _TMP115 == _TMP111) { 
            if (_TMP99 == _TMP155 && _TMP111 == _TMP159) { 
                _E[3] = _TMP4.xyz + 8.33299994E-01*(_TMP7.xyz - _TMP4.xyz);
                _E[2] = _TMP4.xyz + 5.00000000E-01*(_TMP7.xyz - _TMP4.xyz);
            } else {
                _E[3] = _TMP4.xyz + 7.50000000E-01*(_TMP7.xyz - _TMP4.xyz);
                _E[2] = (_TMP4.xyz + _TMP7.xyz) - _E[3];
            } 
        } else {
            if (_TMP103 == _TMP111 && _TMP103 == _TMP91 && _TMP107 == _TMP95) { 
                if (_TMP91 == _TMP143 && _TMP95 == _TMP147) { 
                    _E[3] = _TMP4.xyz + 8.33299994E-01*(_TMP5.xyz - _TMP4.xyz);
                    _E[1] = (_TMP4.xyz + _TMP5.xyz)*5.00000000E-01;
                } else {
                    _E[3] = _TMP4.xyz + 7.50000000E-01*(_TMP5.xyz - _TMP4.xyz);
                    _E[1] = (_TMP4.xyz + _TMP5.xyz) - _E[3];
                } 
            } else {
                _E[3] = (_TMP4.xyz + _TMP5.xyz)*5.00000000E-01;
            } 
        } 
    } else {
        if (_TMP107 != _TMP119 && _TMP119 == _TMP167 && (_TMP107 != _TMP171 || _TMP119 != _TMP135) && _TMP107 == _TMP163 && _TMP107 == _TMP103 && _TMP119 == _TMP115 && _TMP103 == _TMP99 && _TMP115 == _TMP111) { 
            _E[3] = _TMP4.xyz + 1.66700006E-01*(_TMP7.xyz - _TMP4.xyz);
        } else {
            if (_TMP115 != _TMP119 && _TMP119 == _TMP179 && (_TMP115 != _TMP183 || _TMP119 != _TMP135) && _TMP115 == _TMP175 && _TMP115 == _TMP103 && _TMP119 == _TMP107 && _TMP103 == _TMP91 && _TMP107 == _TMP95) { 
                _E[3] = _TMP4.xyz + 1.66700006E-01*(_TMP5.xyz - _TMP4.xyz);
            } else {
                if (_TMP103 != _TMP115 && _TMP103 != _TMP107 && _TMP107 != _TMP119 && _TMP103 == _TMP95 && (_TMP115 == _TMP119 && _TMP107 != _TMP91 || _TMP103 != _TMP119 && _TMP107 == _TMP163)) { 
                    _E[3] = (_TMP4.xyz + _TMP5.xyz)*5.00000000E-01;
                } else {
                    if (_TMP103 != _TMP115 && _TMP103 != _TMP107 && _TMP115 != _TMP119 && _TMP103 == _TMP111 && (_TMP107 == _TMP119 && _TMP115 != _TMP99 || _TMP103 != _TMP119 && _TMP115 == _TMP175)) { 
                        _E[3] = (_TMP4.xyz + _TMP7.xyz)*5.00000000E-01;
                    } else {
                        if (_TMP103 != _TMP115 && _TMP103 != _TMP119 && _TMP103 != _TMP107 && _TMP111 == _TMP103 && _TMP103 == _TMP95) { 
                            _E[3] = (_TMP5.xyz + _TMP7.xyz)*5.00000000E-01;
                        } 
                    } 
                } 
            } 
        } 
    } 
    if (_TMP103 != _TMP107 && _TMP107 == _TMP91 && (_TMP103 != _TMP95 && (_TMP103 != _TMP99 || _TMP103 != _TMP115 || _TMP99 == _TMP151 && _TMP115 == _TMP183 || _TMP91 != _TMP99 && _TMP91 != _TMP87 || _TMP107 != _TMP115 && _TMP107 != _TMP119) || _TMP103 == _TMP119 && (_TMP95 == _TMP107 || _TMP103 == _TMP115 || _TMP107 != _TMP115) || _TMP103 == _TMP87 && (_TMP95 == _TMP107 || _TMP103 == _TMP99 || _TMP91 != _TMP99))) { 
        if (_TMP103 == _TMP87 && _TMP103 == _TMP115 && _TMP107 == _TMP119) { 
            if (_TMP115 == _TMP179 && _TMP119 == _TMP183) { 
                _E[1] = _E[1] + 8.33299994E-01*(_TMP5.xyz - _E[1]);
                _E[3] = _E[3] + 5.00000000E-01*(_TMP5.xyz - _E[3]);
            } else {
                _E[1] = _E[1] + 7.50000000E-01*(_TMP5.xyz - _E[1]);
                _E[3] = (_E[3] + _TMP5.xyz) - _E[1];
            } 
        } else {
            if (_TMP103 == _TMP119 && _TMP103 == _TMP99 && _TMP91 == _TMP87) { 
                if (_TMP99 == _TMP155 && _TMP87 == _TMP151) { 
                    _E[1] = _E[1] + 8.33299994E-01*(_TMP1.xyz - _E[1]);
                    _E[0] = (_TMP4.xyz + _TMP1.xyz)*5.00000000E-01;
                } else {
                    _E[1] = _E[1] + 7.50000000E-01*(_TMP1.xyz - _E[1]);
                    _E[0] = (_TMP4.xyz + _TMP1.xyz) - _E[1];
                } 
            } else {
                _E[1] = (_E[1] + _TMP1.xyz)*5.00000000E-01;
            } 
        } 
    } else {
        if (_TMP91 != _TMP95 && _TMP95 == _TMP143 && (_TMP91 != _TMP147 || _TMP95 != _TMP127) && _TMP91 == _TMP139 && _TMP91 == _TMP103 && _TMP95 == _TMP107 && _TMP103 == _TMP115 && _TMP107 == _TMP119) { 
            _E[1] = _E[1] + 1.66700006E-01*(_TMP5.xyz - _E[1]);
        } else {
            if (_TMP107 != _TMP95 && _TMP95 == _TMP167 && (_TMP107 != _TMP163 || _TMP95 != _TMP127) && _TMP107 == _TMP171 && _TMP107 == _TMP103 && _TMP95 == _TMP91 && _TMP103 == _TMP99 && _TMP91 == _TMP87) { 
                _E[1] = _E[1] + 1.66700006E-01*(_TMP1.xyz - _E[1]);
            } else {
                if (_TMP103 != _TMP107 && _TMP103 != _TMP91 && _TMP91 != _TMP95 && _TMP103 == _TMP87 && (_TMP107 == _TMP95 && _TMP91 != _TMP99 || _TMP103 != _TMP95 && _TMP91 == _TMP139)) { 
                    _E[1] = (_E[1] + _TMP1.xyz)*5.00000000E-01;
                } else {
                    if (_TMP103 != _TMP107 && _TMP103 != _TMP91 && _TMP107 != _TMP95 && _TMP103 == _TMP119 && (_TMP91 == _TMP95 && _TMP107 != _TMP115 || _TMP103 != _TMP95 && _TMP107 == _TMP171)) { 
                        _E[1] = (_E[1] + _TMP5.xyz)*5.00000000E-01;
                    } else {
                        if (_TMP103 != _TMP107 && _TMP103 != _TMP95 && _TMP103 != _TMP91 && _TMP119 == _TMP103 && _TMP103 == _TMP87) { 
                            _E[1] = (_TMP1.xyz + _TMP5.xyz)*5.00000000E-01;
                        } 
                    } 
                } 
            } 
        } 
    } 
    if (_TMP103 != _TMP91 && _TMP91 == _TMP99 && (_TMP103 != _TMP87 && (_TMP103 != _TMP115 || _TMP103 != _TMP107 || _TMP115 == _TMP175 && _TMP107 == _TMP163 || _TMP99 != _TMP115 && _TMP99 != _TMP111 || _TMP91 != _TMP107 && _TMP91 != _TMP95) || _TMP103 == _TMP95 && (_TMP87 == _TMP91 || _TMP103 == _TMP107 || _TMP91 != _TMP107) || _TMP103 == _TMP111 && (_TMP87 == _TMP91 || _TMP103 == _TMP115 || _TMP99 != _TMP115))) { 
        if (_TMP103 == _TMP111 && _TMP103 == _TMP107 && _TMP91 == _TMP95) { 
            if (_TMP107 == _TMP167 && _TMP95 == _TMP163) { 
                _E[0] = _E[0] + 8.33299994E-01*(_TMP1.xyz - _E[0]);
                _E[1] = _E[1] + 5.00000000E-01*(_TMP1.xyz - _E[1]);
            } else {
                _E[0] = _E[0] + 7.50000000E-01*(_TMP1.xyz - _E[0]);
                _E[1] = (_E[1] + _TMP1.xyz) - _E[0];
            } 
        } else {
            if (_TMP103 == _TMP95 && _TMP103 == _TMP115 && _TMP99 == _TMP111) { 
                if (_TMP115 == _TMP179 && _TMP111 == _TMP175) { 
                    _E[0] = _E[0] + 8.33299994E-01*(_TMP3.xyz - _E[0]);
                    _E[2] = (_E[2] + _TMP3.xyz)*5.00000000E-01;
                } else {
                    _E[0] = _E[0] + 7.50000000E-01*(_TMP3.xyz - _E[0]);
                    _E[2] = (_E[2] + _TMP3.xyz) - _E[0];
                } 
            } else {
                _E[0] = (_E[0] + _TMP3.xyz)*5.00000000E-01;
            } 
        } 
    } else {
        if (_TMP99 != _TMP87 && _TMP87 == _TMP155 && (_TMP99 != _TMP151 || _TMP87 != _TMP123) && _TMP99 == _TMP159 && _TMP99 == _TMP103 && _TMP87 == _TMP91 && _TMP103 == _TMP107 && _TMP91 == _TMP95) { 
            _E[0] = _E[0] + 1.66700006E-01*(_TMP1.xyz - _E[0]);
        } else {
            if (_TMP91 != _TMP87 && _TMP87 == _TMP143 && (_TMP91 != _TMP139 || _TMP87 != _TMP123) && _TMP91 == _TMP147 && _TMP91 == _TMP103 && _TMP87 == _TMP99 && _TMP103 == _TMP115 && _TMP99 == _TMP111) { 
                _E[0] = _E[0] + 1.66700006E-01*(_TMP3.xyz - _E[0]);
            } else {
                if (_TMP103 != _TMP91 && _TMP103 != _TMP99 && _TMP99 != _TMP87 && _TMP103 == _TMP111 && (_TMP91 == _TMP87 && _TMP99 != _TMP115 || _TMP103 != _TMP87 && _TMP99 == _TMP159)) { 
                    _E[0] = (_E[0] + _TMP3.xyz)*5.00000000E-01;
                } else {
                    if (_TMP103 != _TMP91 && _TMP103 != _TMP99 && _TMP91 != _TMP87 && _TMP103 == _TMP95 && (_TMP99 == _TMP87 && _TMP91 != _TMP107 || _TMP103 != _TMP87 && _TMP91 == _TMP147)) { 
                        _E[0] = (_E[0] + _TMP1.xyz)*5.00000000E-01;
                    } else {
                        if (_TMP103 != _TMP91 && _TMP103 != _TMP87 && _TMP103 != _TMP99 && _TMP95 == _TMP103 && _TMP103 == _TMP111) { 
                            _E[0] = (_TMP3.xyz + _TMP1.xyz)*5.00000000E-01;
                        } 
                    } 
                } 
            } 
        } 
    } 
    if (_TMP103 != _TMP99 && _TMP99 == _TMP115 && (_TMP103 != _TMP111 && (_TMP103 != _TMP107 || _TMP103 != _TMP91 || _TMP107 == _TMP171 && _TMP91 == _TMP139 || _TMP115 != _TMP107 && _TMP115 != _TMP119 || _TMP99 != _TMP91 && _TMP99 != _TMP87) || _TMP103 == _TMP87 && (_TMP111 == _TMP99 || _TMP103 == _TMP91 || _TMP99 != _TMP91) || _TMP103 == _TMP119 && (_TMP111 == _TMP99 || _TMP103 == _TMP107 || _TMP115 != _TMP107))) { 
        if (_TMP103 == _TMP119 && _TMP103 == _TMP91 && _TMP99 == _TMP87) { 
            if (_TMP91 == _TMP143 && _TMP87 == _TMP139) { 
                _E[2] = _E[2] + 8.33299994E-01*(_TMP3.xyz - _E[2]);
                _E[0] = _E[0] + 5.00000000E-01*(_TMP3.xyz - _E[0]);
            } else {
                _E[2] = _E[2] + 7.50000000E-01*(_TMP3.xyz - _E[2]);
                _E[0] = (_E[0] + _TMP3.xyz) - _E[2];
            } 
        } else {
            if (_TMP103 == _TMP87 && _TMP103 == _TMP107 && _TMP115 == _TMP119) { 
                if (_TMP107 == _TMP167 && _TMP119 == _TMP171) { 
                    _E[2] = _E[2] + 8.33299994E-01*(_TMP7.xyz - _E[2]);
                    _E[3] = (_E[3] + _TMP7.xyz)*5.00000000E-01;
                } else {
                    _E[2] = _E[2] + 7.50000000E-01*(_TMP7.xyz - _E[2]);
                    _E[3] = (_E[3] + _TMP7.xyz) - _E[2];
                } 
            } else {
                _E[2] = (_E[2] + _TMP7.xyz)*5.00000000E-01;
            } 
        } 
    } else {
        if (_TMP115 != _TMP111 && _TMP111 == _TMP179 && (_TMP115 != _TMP175 || _TMP111 != _TMP131) && _TMP115 == _TMP183 && _TMP115 == _TMP103 && _TMP111 == _TMP99 && _TMP103 == _TMP91 && _TMP99 == _TMP87) { 
            _E[2] = _E[2] + 1.66700006E-01*(_TMP3.xyz - _E[2]);
        } else {
            if (_TMP99 != _TMP111 && _TMP111 == _TMP155 && (_TMP99 != _TMP159 || _TMP111 != _TMP131) && _TMP99 == _TMP151 && _TMP99 == _TMP103 && _TMP111 == _TMP115 && _TMP103 == _TMP107 && _TMP115 == _TMP119) { 
                _E[2] = _E[2] + 1.66700006E-01*(_TMP7.xyz - _E[2]);
            } else {
                if (_TMP103 != _TMP99 && _TMP103 != _TMP115 && _TMP115 != _TMP111 && _TMP103 == _TMP119 && (_TMP99 == _TMP111 && _TMP115 != _TMP107 || _TMP103 != _TMP111 && _TMP115 == _TMP183)) { 
                    _E[2] = (_E[2] + _TMP7.xyz)*5.00000000E-01;
                } else {
                    if (_TMP103 != _TMP99 && _TMP103 != _TMP115 && _TMP99 != _TMP111 && _TMP103 == _TMP87 && (_TMP115 == _TMP111 && _TMP99 != _TMP91 || _TMP103 != _TMP111 && _TMP99 == _TMP151)) { 
                        _E[2] = (_E[2] + _TMP3.xyz)*5.00000000E-01;
                    } else {
                        if (_TMP103 != _TMP99 && _TMP103 != _TMP111 && _TMP103 != _TMP115 && _TMP87 == _TMP103 && _TMP103 == _TMP119) { 
                            _E[2] = (_TMP7.xyz + _TMP3.xyz)*5.00000000E-01;
                        } 
                    } 
                } 
            } 
        } 
    } 
    if (_fp.x < 5.00000000E-01) { 
        if (_fp.y < 5.00000000E-01) { 
            _TMP29 = _E[0];
        } else {
            _TMP29 = _E[2];
        } 
        _TMP28 = _TMP29;
    } else {
        if (_fp.y < 5.00000000E-01) { 
            _TMP30 = _E[1];
        } else {
            _TMP30 = _E[3];
        } 
        _TMP28 = _TMP30;
    } 
    _OUT._color1 = vec4(_TMP28.x, _TMP28.y, _TMP28.z, 1.00000000E+00);
    FragColor = _OUT._color1;
    return;
} 
#endif
