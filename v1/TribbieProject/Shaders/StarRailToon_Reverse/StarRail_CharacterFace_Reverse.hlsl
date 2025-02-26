#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

#define _CharacterLocalMainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _NewLocalLightDir float4(0, 0, 0, 0)
#define _DisableCharacterLocalLight float(0)
#define _EnableCustomCameraOverride float(0)
#define _IsMonster float(0)
#define _HideCharaParts float(0)
#define _ShowPartID float(0)
#define _MainTex_ST float4(1, 1, 0, 0)
#define _UseUVChannel2 float(1)
#define _DissolveST float4(1, 1, 0, 0)
#define _DistortionST float4(1, 1, 0, 0)
#define _DissolveUV float(0)
#define _DissolvePosMaskPos float4(1, 0, 0, 1)
#define _DissolvePosMaskWorldON float(0)
#define _DissolvePosMaskRootOffset float4(0, 0, 0, 0)
#define _DissolvePosMaskFilpOn float(0)
#define _DissolvePosMaskOn float(0)
#define _DissolvePosMaskGlobalOn float(0)
#define _UsingDitherAlpha float(1E-45)
#define _DitherAlpha float(0.96122134)
#define _ES_MonsterLightDir float3(0.27059788, 0.7071069, 0.65328157)
#define _CustomMainLightDir float4(0, 0, 0, 0)
#define _ES_CharacterDisableLocalMainLight float(0)
#define _ES_EffCustomLightPosition float4(0, 0, 0, 0)

#define _MainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _MainLightColor float4(1, 1, 1, 1)
#define _CharacterLocalMainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _CharacterLocalMainLightColor float4(1, 1, 1, 1)
#define _CharacterLocalMainLightColor1 float4(0, 0, 0, 0)
#define _CharacterLocalMainLightColor2 float4(0, 0, 0, 0)
#define _CharacterLocalMainLightDark1 float4(0, 0, 0, 0)
#define _NewLocalLightDir float4(0, 0, 0, 0)
#define _NewLocalLightCharCenter float4(0, 0, 0, 0)
#define _NewLocalLightStrength float4(0, 0, 0, 0)
#define _DisableCharacterLocalLight float(0)
#define _UseSelfShadow float(1)
#define _MainLightWorldToShadowArr float4x4(0.10422597, -0.038679726, -0.0007523565, 0, -1.0353922E-08, -0.09219322, 0.0012626058, 0, 0.060174905, 0.06699522, 0.0013031194, 0, -43.7041, -3.9868202, -0.5940366, 1)
#define _VolumetricFogEnable float(1E-45)
#define _CascadeShadowSplitSpheres0 float4(188.5324, 168.75716, 408.05258, 4.134364)
#define _CascadeShadowSplitSpheres1 float4(177.9075, 166.43645, 420.43933, 13.613332)
#define _CascadeShadowSplitSpheres2 float4(138.06415, 157.73378, 466.88986, 54.392616)
#define _CascadeShadowSplitSpheres3 float4(49.080673, 138.29784, 570.6293, 112.45557)
#define _CascadeShadowSplitSphereRadii float4(17.092966, 185.3228, 2958.5566, 12646.255)
#define _MainLightShadowParams float4(1, 1, 0, 0)
#define _MainLightShadowmapSize float4(0.00048828125, 0.00048828125, 2048, 2048)
#define _SliceZParams float4(0.341, 1, 0.1, 1)
#define _CharaWorldSpaceOffset float3(188.484, 168.043, 408.061)
#define _IsMonster float(0)
#define _SelfShadowSampleOffset float(0)
#define _Color float4(1, 1, 1, 1)
#define _EmissionThreshold float(0.8)
#define _EmissionIntensity float(0.65)
#define _RimShadowColor float3(1, 1, 1)
#define _RimShadowWidth float(1)
#define _RimShadowFeather float(0.01)
#define _FresnelColor float4(0, 0, 0, 0)
#define _FresnelBSI float4(1, 1, 1, 0)
#define _FresnelColorStrength float(1)
#define _RimShadowCt float(1)
#define _RimShadowIntensity float(1)
#define _RimShadowOffset float4(0, 0, 0, 0)
#define _GlobalOneMinusAvatarIntensityEnable float(0)
#define _mBloomIntensity0 float(0.02)
#define _ExMapThreshold float(0.8)
#define _ExSpecularIntensity float(2)
#define _ExCheekIntensity float(0)
#define _ExShyIntensity float(0)
#define _ExShadowIntensity float(0)
#define _ExCheekColor float4(0.9786729, 0.08995321, 0.08995321, 1)
#define _ExShyColor float4(1, 0.74649453, 0.74649453, 1)
#define _ExShadowColor float4(0.197148, 0.20759486, 0.32296914, 1)
#define _ExEyeColor float4(0.53867865, 0.55236256, 0.6070304, 1)
#define _BackShadowRange float(0)
#define _ShadowColor float4(0.9786729, 0.78736955, 0.7634306, 1)
#define _EyeBaseShadowColor float4(1, 1, 1, 1)
#define _EyeShadowAngleMin float(0.55)
#define _EyeShadowMaxAngle float(1)
#define _UseSpecialEye float(0)
#define _SpecialEyeShapeTexture_ST float4(1, 1, 0, 0)
#define _EyeCenter float4(0, 0, 0, 0)
#define _EyeSPColor1 float4(1, 1, 1, 1)
#define _EyeSPColor2 float4(1, 1, 1, 1)
#define _SpecialEyeIntensity float(1)
#define _LipLinefixColor float4(0.5448383, 0.30418667, 0.30418667, 0)
#define _LipLineFixThrd float(0.45)
#define _LipLineFixStart float(0.5)
#define _LipLineFixMax float(2)
#define _LipLineFixScale float(1)
#define _LipLineFixSC float(0)
#define _ShadowFeather float(0.0001)
#define _EyeEffectProcs float(0)
#define _EyeEffectColor float4(1, 1, 1, 1)
#define _EyeShadowColor float4(0.81761277, 0.7330038, 0.76409596, 1)
#define _NoseLinePower float(2)
#define _NoseLineColor float4(0.79865986, 0.58754474, 0.58754474, 1)
#define _ES_GlobalRotMatrix float4x4(-1, 0, -0, 0, -0, 1, -0, 0, -0, 0, -1, 0, 0, 1, 0, 0)
#define _GlobalOneMinusAvatarIntensity float(0)
#define _ES_MonsterLightDir float3(0.27059788, 0.7071069, 0.65328157)
#define _CustomMainLightDir float4(0, 0, 0, 0)
#define _ES_TransitionRate float(0)
#define _ES_LEVEL_ADJUST_ON float(1)
#define _ES_CharacterDisableLocalMainLight float(0)
#define _ES_AddColor float4(0, 0, 0, 1)
#define _ES_CharacterShadowFactor float(0)
#define _ES_HeightLerpTop float(0)
#define _ES_HeightLerpBottom float(0)
#define _ES_HeightLerpTopColor float4(1, 1, 1, 0.5)
#define _ES_HeightLerpMiddleColor float4(1, 1, 1, 0.5)
#define _ES_HeightLerpBottomColor float4(1, 1, 1, 0.5)
#define _ES_LevelSkinLightColor float4(1, 1, 1, 0.5)
#define _ES_LevelSkinShadowColor float4(1, 1, 1, 0.5)
#define _ES_LevelEyeShadowIntensity float(0)
#define _ES_LevelShadow float(0)
#define _ES_LevelMid float(0.55)
#define _ES_LevelHighLight float(1)
#define _ES_SelfShadowLerpHair float(0.63)
#define _ES_FogColor float(0.5625)
#define _ES_FogDensity float(0.65)
#define _ES_FogNear float(0)
#define _ES_FogFar float(1000)
#define _ES_HeightFogColor float(0.8125)
#define _ES_HeightFogBaseHeight float(-100)
#define _ES_HeightFogRange float(300)
#define _ES_HeightFogDensity float(0.637)
#define _ES_HeightFogFogNear float(0)
#define _ES_HeightFogFogFar float(500)
#define _ES_FogCharacterNearFactor float(0.175)
#define _ES_HeightFogAddAjust float(1)
#define _ES_DisableFogTransition float(0)

#define _MainLightShadowmapTexture _MainLightShadowmapTexture_Custom

TEXTURE2D(_MainTex);
TEXTURE2D(_SpecialEyeShapeTexture);
TEXTURE2D(_FaceMap);
TEXTURE2D(_FaceExpression);
TEXTURE2D(_MainLightShadowmapTexture);
TEXTURE2D(_CharacterHairShadowMap);
TEXTURE2D(_ES_GradientAtlas);
TEXTURE2D(_FogTex);

#define s0_s sampler_LinearClamp
#define s1_s sampler_LinearRepeat
#define s2_s sampler_LinearRepeat
#define s3_s sampler_LinearRepeat
#define s4_s sampler_LinearRepeat
#define s5_s sampler_LinearClampCompare
#define s6_s sampler_LinearClamp
#define s7_s sampler_LinearClamp

void Vertex(
    float4 v0 : POSITION0,
    float3 v1 : NORMAL0,
    float4 v2 : TANGENT0,
    float2 v3 : TEXCOORD0,
    float4 v4 : COLOR0,
    float2 v5 : TEXCOORD1,
    uint v6 : SV_VertexID0,
    out float4 o0 : SV_POSITION0,
    out float4 o1 : TEXCOORD0,
    out float4 o2 : TEXCOORD1,
    out float4 o3 : TEXCOORD2,
    out float4 o4 : TEXCOORD3,
    out float4 o5 : TEXCOORD4,
    out float4 o6 : TEXCOORD5,
    out float4 o7 : TEXCOORD6,
    out float2 o8 : TEXCOORD8)
  {
    float4 r0,r1,r2,r3,r4;
    uint4 bitmask, uiDest;
    float4 fDest;

    float4x4 MATRIX_T_M = transpose(UNITY_MATRIX_M);
    float4x4 MATRIX_IT_M = transpose(UNITY_MATRIX_I_M);
    float4x4 MATRIX_T_VP = transpose(UNITY_MATRIX_VP);
    float4x4 MATRIX_T_MVP = transpose(UNITY_MATRIX_MVP);
  
    r0.xyz = MATRIX_T_M[1].xyz * v0.yyy;
    r0.xyz = MATRIX_T_M[0].xyz * v0.xxx + r0.xyz;
    r0.xyz = MATRIX_T_M[2].xyz * v0.zzz + r0.xyz;
    r0.xyz = MATRIX_T_M[3].xyz + r0.xyz;
    r1.xyzw = MATRIX_T_MVP[1].xyzw * v0.yyyy;
    r1.xyzw = MATRIX_T_MVP[0].xyzw * v0.xxxx + r1.xyzw;
    r1.xyzw = MATRIX_T_MVP[2].xyzw * v0.zzzz + r1.xyzw;
    r1.xyzw = MATRIX_T_MVP[3].xyzw + r1.xyzw;
    r0.w = (0.5 < _EnableCustomCameraOverride.x);
    r2.xyzw = MATRIX_T_VP[1].xyzw * r0.yyyy;
    r2.xyzw = MATRIX_T_VP[0].xyzw * r0.xxxx + r2.xyzw;
    r2.xyzw = MATRIX_T_VP[2].xyzw * r0.zzzz + r2.xyzw;
    r2.xyzw = MATRIX_T_VP[3].xyzw + r2.xyzw;
    r1.xyzw = r0.wwww ? r2.xyzw : r1.xyzw;
    o1.xy = v3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    r0.w = (0.5 < _UseUVChannel2.x);
    o1.zw = r0.ww ? v5.xy : 0;
    r2.xyz = float3(0.5,0.5,0.5) * r1.xyw;
    r2.w = _ProjectionParams.x * r2.y;
    o3.xy = r2.xw + r2.zz;
    r2.x = dot(v1.xyz, MATRIX_IT_M[0].xyz);
    r2.y = dot(v1.xyz, MATRIX_IT_M[1].xyz);
    r2.z = dot(v1.xyz, MATRIX_IT_M[2].xyz);
    r2.w = dot(r2.xyz, r2.xyz);
    r2.w = max(1.17549435e-038, r2.w);
    r2.w = rsqrt(r2.w);
    o5.xyz = r2.xyz * r2.www;
    r2.x = 1 + _ES_CharacterDisableLocalMainLight.x;
    r2.x = -abs(_DisableCharacterLocalLight.x) + r2.x;
    r2.x = (0.5 < r2.x);
    r2.xyz = r2.xxx ? _MainLightPosition.xyz : _CharacterLocalMainLightPosition.xyz;
    r2.w = (0.5 < _IsMonster.x);
    r2.xyz = r2.www ? _ES_MonsterLightDir.xyz : r2.xyz;
    r3.xyz = _CustomMainLightDir.xyz + -r2.xyz;
    r2.xyz = _CustomMainLightDir.www * r3.xyz + r2.xyz;
    r2.xyz = r2.www ? _ES_MonsterLightDir.xyz : r2.xyz;
    r3.x = MATRIX_IT_M[0].y;
    r3.y = MATRIX_IT_M[1].y;
    r3.z = MATRIX_IT_M[2].y;
    r2.w = dot(r3.xyz, r3.xyz);
    r2.w = max(1.17549435e-038, r2.w);
    r2.w = rsqrt(r2.w);
    r3.xyz = r3.xyz * r2.www;
    r2.w = dot(r3.xyz, r2.xyz);
    o4.w = saturate(1 + r2.w);
    if (r0.w != 0) {
      r0.w = dot(r2.xyz, r2.xyz);
      r0.w = sqrt(r0.w);
      r0.w = (r0.w >= 0.899999976);
      r3.xyz = MATRIX_IT_M[1].xyz * r2.yyy;
      r3.xyz = MATRIX_IT_M[0].xyz * r2.xxx + r3.xyz;
      r3.xyz = MATRIX_IT_M[2].xyz * r2.zzz + r3.xyz;
      r2.w = dot(r3.xyz, r3.xyz);
      r2.w = rsqrt(r2.w);
      r3.xy = r3.yz * r2.ww;
      r2.w = dot(float2(0.984809995,0.173649997), r3.xy);
      r3.x = dot(float2(-0.173649997,0.984809995), r3.xy);
      r3.y = min(abs(r3.x), abs(r2.w));
      r3.z = max(abs(r3.x), abs(r2.w));
      r3.z = 1 / r3.z;
      r3.y = r3.y * r3.z;
      r3.z = r3.y * r3.y;
      r3.w = r3.z * 0.0208350997 + -0.0851330012;
      r3.w = r3.z * r3.w + 0.180141002;
      r3.w = r3.z * r3.w + -0.330299497;
      r3.z = r3.z * r3.w + 0.999866009;
      r3.w = r3.y * r3.z;
      r4.x = (abs(r2.w) < abs(r3.x));
      r3.w = r3.w * -2 + 1.57079637;
      r3.w = r4.x ? r3.w : 0;
      r3.y = r3.y * r3.z + r3.w;
      r3.z = (r2.w < -r2.w);
      r3.z = r3.z ? -3.141593 : 0;
      r3.y = r3.y + r3.z;
      r3.z = min(r3.x, r2.w);
      r2.w = max(r3.x, r2.w);
      r3.x = (r3.z < -r3.z);
      r2.w = (r2.w >= -r2.w);
      r2.w = r2.w ? r3.x : 0;
      r2.w = r2.w ? -r3.y : r3.y;
      r3.x = (0 < -r2.w);
      r2.w = -0.318309903 * r2.w;
      r2.w = max(9.99999975e-005, abs(r2.w));
      r4.z = min(0.999899983, r2.w);
      r3.yz = v5.xy * float2(-1,1) + float2(1,0);
      r4.xy = r3.xx ? r3.yz : v5.xy;
      o6.xyz = r0.www ? r4.xyz : float3(0,1,0);
      o8.xy = v5.xy * _MainTex_ST.xy + _MainTex_ST.zw;
      r0.w = dot(_NewLocalLightDir.xyz, _NewLocalLightDir.xyz);
      r0.w = sqrt(r0.w);
      r0.w = (r0.w >= 0.899999976);
      r4.xyz = _NewLocalLightDir.yyy * MATRIX_IT_M[1].xyz;
      r4.xyz = MATRIX_IT_M[0].xyz * _NewLocalLightDir.xxx + r4.xyz;
      r4.xyz = MATRIX_IT_M[2].xyz * _NewLocalLightDir.zzz + r4.xyz;
      r2.w = dot(r4.xyz, r4.xyz);
      r2.w = rsqrt(r2.w);
      r3.xw = r4.yz * r2.ww;
      r2.w = dot(float2(0.984809995,0.173649997), r3.xw);
      r3.x = dot(float2(-0.173649997,0.984809995), r3.xw);
      r3.w = min(abs(r3.x), abs(r2.w));
      r4.x = max(abs(r3.x), abs(r2.w));
      r4.x = 1 / r4.x;
      r3.w = r4.x * r3.w;
      r4.x = r3.w * r3.w;
      r4.y = r4.x * 0.0208350997 + -0.0851330012;
      r4.y = r4.x * r4.y + 0.180141002;
      r4.y = r4.x * r4.y + -0.330299497;
      r4.x = r4.x * r4.y + 0.999866009;
      r4.y = r4.x * r3.w;
      r4.z = (abs(r2.w) < abs(r3.x));
      r4.y = r4.y * -2 + 1.57079637;
      r4.y = r4.z ? r4.y : 0;
      r3.w = r3.w * r4.x + r4.y;
      r4.x = (r2.w < -r2.w);
      r4.x = r4.x ? -3.141593 : 0;
      r3.w = r4.x + r3.w;
      r4.x = min(r3.x, r2.w);
      r2.w = max(r3.x, r2.w);
      r3.x = (r4.x < -r4.x);
      r2.w = (r2.w >= -r2.w);
      r2.w = r2.w ? r3.x : 0;
      r2.w = r2.w ? -r3.w : r3.w;
      r3.x = (0 < -r2.w);
      r2.w = -0.318309903 * r2.w;
      r2.w = max(9.99999975e-005, abs(r2.w));
      r4.z = min(0.999899983, r2.w);
      r4.xy = r3.xx ? r3.yz : v5.xy;
      o7.xyz = r0.www ? r4.xyz : float3(0,1,0);
    } else {
      r0.w = dot(r2.xyz, r2.xyz);
      r0.w = sqrt(r0.w);
      r0.w = (r0.w >= 0.899999976);
      r3.xyz = MATRIX_IT_M[1].xyz * r2.yyy;
      r2.xyw = MATRIX_IT_M[0].xyz * r2.xxx + r3.xyz;
      r2.xyz = MATRIX_IT_M[2].xyz * r2.zzz + r2.xyw;
      r2.x = dot(r2.xyz, r2.xyz);
      r2.x = rsqrt(r2.x);
      r2.xy = r2.yz * r2.xx;
      r2.z = dot(float2(0.984809995,0.173649997), r2.xy);
      r2.x = dot(float2(-0.173649997,0.984809995), r2.xy);
      r2.y = min(abs(r2.x), abs(r2.z));
      r2.w = max(abs(r2.x), abs(r2.z));
      r2.w = 1 / r2.w;
      r2.y = r2.y * r2.w;
      r2.w = r2.y * r2.y;
      r3.x = r2.w * 0.0208350997 + -0.0851330012;
      r3.x = r2.w * r3.x + 0.180141002;
      r3.x = r2.w * r3.x + -0.330299497;
      r2.w = r2.w * r3.x + 0.999866009;
      r3.x = r2.y * r2.w;
      r3.y = (abs(r2.z) < abs(r2.x));
      r3.x = r3.x * -2 + 1.57079637;
      r3.x = r3.y ? r3.x : 0;
      r2.y = r2.y * r2.w + r3.x;
      r2.w = (r2.z < -r2.z);
      r2.w = r2.w ? -3.141593 : 0;
      r2.y = r2.y + r2.w;
      r2.w = min(r2.x, r2.z);
      r2.x = max(r2.x, r2.z);
      r2.z = (r2.w < -r2.w);
      r2.x = (r2.x >= -r2.x);
      r2.x = r2.x ? r2.z : 0;
      r2.x = r2.x ? -r2.y : r2.y;
      r2.y = (0 < -r2.x);
      r2.x = -0.318309903 * r2.x;
      r2.x = max(9.99999975e-005, abs(r2.x));
      r3.z = min(0.999899983, r2.x);
      r2.xz = v3.xy * float2(-1,1) + float2(1,0);
      r3.xy = r2.yy ? r2.xz : v3.xy;
      o6.xyz = r0.www ? r3.xyz : float3(0,1,0);
      r0.w = dot(_NewLocalLightDir.xyz, _NewLocalLightDir.xyz);
      r0.w = sqrt(r0.w);
      r0.w = (r0.w >= 0.899999976);
      r3.xyz = _NewLocalLightDir.yyy * MATRIX_IT_M[1].xyz;
      r3.xyz = MATRIX_IT_M[0].xyz * _NewLocalLightDir.xxx + r3.xyz;
      r3.xyz = MATRIX_IT_M[2].xyz * _NewLocalLightDir.zzz + r3.xyz;
      r2.y = dot(r3.xyz, r3.xyz);
      r2.y = rsqrt(r2.y);
      r2.yw = r3.yz * r2.yy;
      r3.x = dot(float2(0.984809995,0.173649997), r2.yw);
      r2.y = dot(float2(-0.173649997,0.984809995), r2.yw);
      r2.w = min(abs(r2.y), abs(r3.x));
      r3.y = max(abs(r2.y), abs(r3.x));
      r3.y = 1 / r3.y;
      r2.w = r3.y * r2.w;
      r3.y = r2.w * r2.w;
      r3.z = r3.y * 0.0208350997 + -0.0851330012;
      r3.z = r3.y * r3.z + 0.180141002;
      r3.z = r3.y * r3.z + -0.330299497;
      r3.y = r3.y * r3.z + 0.999866009;
      r3.z = r3.y * r2.w;
      r3.w = (abs(r3.x) < abs(r2.y));
      r3.z = r3.z * -2 + 1.57079637;
      r3.z = r3.w ? r3.z : 0;
      r2.w = r2.w * r3.y + r3.z;
      r3.y = (r3.x < -r3.x);
      r3.y = r3.y ? -3.141593 : 0;
      r2.w = r3.y + r2.w;
      r3.y = min(r2.y, r3.x);
      r2.y = max(r2.y, r3.x);
      r3.x = (r3.y < -r3.y);
      r2.y = (r2.y >= -r2.y);
      r2.y = r2.y ? r3.x : 0;
      r2.y = r2.y ? -r2.w : r2.w;
      r2.w = (0 < -r2.y);
      r2.y = -0.318309903 * r2.y;
      r2.y = max(9.99999975e-005, abs(r2.y));
      r3.z = min(0.999899983, r2.y);
      r3.xy = r2.ww ? r2.xz : v3.xy;
      o7.xyz = r0.www ? r3.xyz : float3(0,1,0);
      o8.xy = float2(0,0);
    }
    r0.w = (0 < asint(_HideCharaParts.x));
    r2.x = 256 * v4.y;
    r2.x = (int)r2.x;
    r2.x = (int)r2.x & asint(_ShowPartID.x);
    r2.x = (0 < (int)r2.x);
    r0.w = r0.w ? r2.x : -1;
    o0.xyzw = r0.wwww ? r1.xyzw : float4(-99,-99,-99,1);
    o2.xyzw = v4.xyzw;
    o3.zw = r1.zw;
    o4.xyz = r0.xyz;
    o5.w = 0;
    return;
}

void Fragment(
    float4 v0 : SV_POSITION0,
    float4 v1 : TEXCOORD0,
    float4 v2 : TEXCOORD1,
    float4 v3 : TEXCOORD2,
    float4 v4 : TEXCOORD3,
    float4 v5 : TEXCOORD4,
    float4 v6 : TEXCOORD5,
    float4 v7 : TEXCOORD6,
    float2 v8 : TEXCOORD8,
    out float4 o0 : SV_Target0,
    out float4 o1 : SV_Target1,
    out float2 o2 : SV_Target2)
{
    float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
    uint4 bitmask, uiDest;
    float4 fDest;

    float4x4 MATRIX_T_V = transpose(UNITY_MATRIX_V);
    float4x4 MATRIX_IT_P = transpose(unity_MatrixInvP);

    r0.xyzw = _MainTex.Sample(s1_s, v1.xy).xyzw;
    r1.x = 1 + _ES_CharacterDisableLocalMainLight.x;
    r1.x = -abs(_DisableCharacterLocalLight.x) + r1.x;
    r1.x = (0.5 < r1.x);
    r1.yzw = r1.xxx ? _MainLightColor.xyz : _CharacterLocalMainLightColor.xyz;
    r2.xyz = -_CascadeShadowSplitSpheres0.xyz + v4.xyz;
    r3.xyz = -_CascadeShadowSplitSpheres1.xyz + v4.xyz;
    r4.xyz = -_CascadeShadowSplitSpheres2.xyz + v4.xyz;
    r5.xyz = -_CascadeShadowSplitSpheres3.xyz + v4.xyz;
    r2.x = dot(r2.xyz, r2.xyz);
    r2.y = dot(r3.xyz, r3.xyz);
    r2.z = dot(r4.xyz, r4.xyz);
    r2.w = dot(r5.xyz, r5.xyz);
    r2.xyzw = (r2.xyzw < _CascadeShadowSplitSphereRadii.xyzw);
    r3.xyzw = r2.xyzw ? float4(1,1,1,1) : 0;
    r2.xyz = r2.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
    r4.w = r2.x;
    r4.xz = r3.zw;
    r4.xyz = r4.wzx + r2.xzy;
    r2.xyz = r4.xwy + r2.xxy;
    r4.y = r3.y;
    r2.xyz = r4.yzw + r2.xyz;
    r3.yzw = max(float3(0,0,0), r2.xyz);
    r2.x = dot(r3.xyzw, float4(4,3,2,1));
    r2.z = 4 + -r2.x;
    r2.w = (uint)r2.z;
    r2.w = (uint)r2.w << 2;
    r3.xyz = _MainLightWorldToShadowArr[1].xyz * v4.yyy;
    r3.xyz = _MainLightWorldToShadowArr[0].xyz * v4.xxx + r3.xyz;
    r3.xyz = _MainLightWorldToShadowArr[2].xyz * v4.zzz + r3.xyz;
    r3.xyz = _MainLightWorldToShadowArr[3].xyz + r3.xyz;
    r4.xy = r3.xy * _MainLightShadowmapSize.zw + float2(0.5,0.5);
    r4.xy = floor(r4.xy);
    r4.zw = r3.xy * _MainLightShadowmapSize.zw + -r4.xy;
    r5.xyzw = float4(0.5,1,0.5,1) + r4.zzww;
    r6.xyzw = r5.xxzz * r5.xxzz;
    r5.xz = float2(0.0799999982,0.0799999982) * r6.yw;
    r6.xy = r6.xz * float2(0.5,0.5) + -r4.zw;
    r6.zw = float2(1,1) + -r4.zw;
    r7.xy = min(float2(0,0), r4.zw);
    r7.xy = -r7.xy * r7.xy + r6.zw;
    r4.zw = max(float2(0,0), r4.zw);
    r4.zw = -r4.zw * r4.zw + r5.yw;
    r7.xy = float2(1,1) + r7.xy;
    r4.zw = float2(1,1) + r4.zw;
    r8.xy = float2(0.159999996,0.159999996) * r6.xy;
    r6.xy = float2(0.159999996,0.159999996) * r6.zw;
    r7.xy = float2(0.159999996,0.159999996) * r7.xy;
    r9.xy = float2(0.159999996,0.159999996) * r4.zw;
    r4.zw = float2(0.159999996,0.159999996) * r5.yw;
    r8.z = r7.x;
    r8.w = r4.z;
    r6.z = r9.x;
    r6.w = r5.x;
    r10.xyzw = r8.zwxz + r6.zwxz;
    r7.z = r8.y;
    r7.w = r4.w;
    r9.z = r6.y;
    r9.w = r5.z;
    r5.xyz = r9.zyw + r7.zyw;
    r6.xyz = r6.xzw / r10.zwy;
    r6.xyz = float3(-2.5,-0.5,1.5) + r6.xyz;
    r7.xyz = r9.zyw / r5.xyz;
    r7.xyz = float3(-2.5,-0.5,1.5) + r7.xyz;
    r6.xyz = _MainLightShadowmapSize.xxx * r6.yxz;
    r7.xyz = _MainLightShadowmapSize.yyy * r7.xyz;
    r6.w = r7.x;
    r2.xy = r4.xy * _MainLightShadowmapSize.xy + r6.yw;
    r8.xy = r4.xy * _MainLightShadowmapSize.xy + r6.xw;
    r9.xy = r4.xy * _MainLightShadowmapSize.xy + r6.zw;
    r7.w = r6.y;
    r11.xy = r4.xy * _MainLightShadowmapSize.xy + r7.wy;
    r6.yw = r7.yz;
    r12.xy = r4.xy * _MainLightShadowmapSize.xy + r6.xy;
    r13.xy = r4.xy * _MainLightShadowmapSize.xy + r6.zy;
    r7.xy = r4.xy * _MainLightShadowmapSize.xy + r7.wz;
    r14.xy = r4.xy * _MainLightShadowmapSize.xy + r6.xw;
    r4.xy = r4.xy * _MainLightShadowmapSize.xy + r6.zw;
    r6.xyzw = r10.zwyz * r5.xxxy;
    r15.xyzw = r10.xyzw * r5.yyzz;
    r2.w = r10.y * r5.z;
    r2.x = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r2.xyz, r3.z).x;
    r8.z = r2.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r8.xyz, r3.z).x;
    r2.y = r6.y * r2.y;
    r2.x = r6.x * r2.x + r2.y;
    r9.z = r8.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r9.xyz, r3.z).x;
    r2.x = r6.z * r2.y + r2.x;
    r11.z = r9.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r11.xyz, r3.z).x;
    r2.x = r6.w * r2.y + r2.x;
    r12.z = r11.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r12.xyz, r3.z).x;
    r2.x = r15.x * r2.y + r2.x;
    r13.z = r12.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r13.xyz, r3.z).x;
    r2.x = r15.y * r2.y + r2.x;
    r7.z = r13.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r7.xyz, r3.z).x;
    r2.x = r15.z * r2.y + r2.x;
    r14.z = r7.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r14.xyz, r3.z).x;
    r2.x = r15.w * r2.y + r2.x;
    r4.z = r14.z;
    r2.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s5_s, r4.xyz, r3.z).x;
    r2.x = r2.w * r2.y + r2.x;
    r2.y = 1 + -_MainLightShadowParams.x;
    r2.x = r2.x * _MainLightShadowParams.x + r2.y;
    r2.y = (0 >= r3.z);
    r2.z = (r3.z >= 1);
    r2.y = (int)r2.z | (int)r2.y;
    r2.zw = float2(4,4) * _MainLightShadowmapSize.xy;
    r2.zw = (r2.zw >= r3.xy);
    r2.z = (int)r2.w | (int)r2.z;
    r3.zw = -_MainLightShadowmapSize.xy * float2(4,4) + float2(1,1);
    r3.xy = (r3.xy >= r3.zw);
    r2.w = (int)r3.y | (int)r3.x;
    r2.z = (int)r2.w | (int)r2.z;
    r2.y = (int)r2.z | (int)r2.y;
    r2.x = (r2.x < 0.99000001);
    r2.x = r2.y ? 0 : r2.x;
    r2.y = r2.x ? 0 : 1;
    r2.x = (int)r2.x & 0x3f800000;
    r2.x = _ES_CharacterShadowFactor.x * r2.x + r2.y;
    r2.y = (0.5 < _ES_CharacterDisableLocalMainLight.x);
    r2.z = 1 + -r2.x;
    r2.z = _CharacterLocalMainLightPosition.w * r2.z + r2.x;
    r2.x = r2.y ? r2.x : r2.z;
    r2.z = (0 != _UseSelfShadow.x);
    if (r2.z != 0) {
      r3.xyz = r1.xxx ? _MainLightPosition.xyz : _CharacterLocalMainLightPosition.xyz;
      r1.x = (0.5 < _IsMonster.x);
      r3.xyz = r1.xxx ? _ES_MonsterLightDir.xyz : r3.xyz;
      r4.xyz = _CustomMainLightDir.xyz + -r3.xyz;
      r3.xyz = _CustomMainLightDir.www * r4.xyz + r3.xyz;
      r3.xyz = r1.xxx ? _ES_MonsterLightDir.xyz : r3.xyz;
      r4.xyz = _SelfShadowSampleOffset.xxx * v5.xyz + v4.xyz;
      r3.w = max(0.200000003, r3.y);
      r5.xyz = _NonJitteredViewProjMatrix[1].xzw * r4.yyy;
      r5.xyz = _NonJitteredViewProjMatrix[0].xzw * r4.xxx + r5.xyz;
      r5.xyz = _NonJitteredViewProjMatrix[2].xzw * r4.zzz + r5.xyz;
      r5.xyz = _NonJitteredViewProjMatrix[3].xzw + r5.xyz;
      r1.x = dot(r3.xzw, r3.xzw);
      r1.x = rsqrt(r1.x);
      r3.xyz = r3.xwz * r1.xxx;
      r3.xyz = r3.xyz * float3(0.00800000038,0.00800000038,0.00800000038) + r4.xyz;
      r4.xyz = _NonJitteredViewProjMatrix[1].xyw * r3.yyy;
      r3.xyw = _NonJitteredViewProjMatrix[0].xyw * r3.xxx + r4.xyz;
      r3.xyz = _NonJitteredViewProjMatrix[2].xyw * r3.zzz + r3.xyw;
      r3.yzw = _NonJitteredViewProjMatrix[3].xyw + r3.xyz;
      r1.x = r5.x + -r3.y;
      r3.x = _ES_SelfShadowLerpHair.x * r1.x + r3.y;
      r2.zw = r3.xz / r3.ww;
      r2.zw = r2.zw * float2(0.5,-0.5) + float2(0.5,0.5);
      r1.x = _CharacterHairShadowMap.SampleLevel(s6_s, r2.zw, 0).x;
      r2.z = r5.y / r5.z;
      r1.x = (r1.x < r2.z);
      r1.x = r1.x ? 1.000000 : 0;
    } else {
      r1.x = 1;
    }
    r2.x = r2.x * r1.x;
    r2.zw = _FaceMap.Sample(s3_s, v6.xy).zw;
    r3.x = (r2.w < _BackShadowRange.x);
    r3.y = 1 + -r2.w;
    r2.w = r3.x ? r3.y : r2.w;
    r3.x = _FaceMap.Sample(s3_s, v1.xy).x;
    r3.yzw = _FaceExpression.Sample(s4_s, v1.xy).xyz;
    r4.x = dot(v5.xyz, v5.xyz);
    r4.x = rsqrt(r4.x);
    r4.xyz = v5.xyz * r4.xxx;
    r5.xyz = _WorldSpaceCameraPos.xyz + -v4.xyz;
    r4.w = dot(r5.xyz, r5.xyz);
    r4.w = rsqrt(r4.w);
    r5.xyz = r5.xyz * r4.www;
    r6.xyz = MATRIX_T_V[1].xyz * r4.yyy;
    r6.xyz = MATRIX_T_V[0].xyz * r4.xxx + r6.xyz;
    r6.xyz = MATRIX_T_V[2].xyz * r4.zzz + r6.xyz;
    r7.xyz = MATRIX_T_V[1].xyz * r5.yyy;
    r7.xyz = MATRIX_T_V[0].xyz * r5.xxx + r7.xyz;
    r7.xyz = MATRIX_T_V[2].xyz * r5.zzz + r7.xyz;
    r4.w = dot(r4.xyz, r5.xyz);
    r7.xyz = -_RimShadowOffset.xyz + r7.xyz;
    r6.w = dot(r7.xyz, r7.xyz);
    r6.w = rsqrt(r6.w);
    r7.xyz = r7.xyz * r6.www;
    r6.x = saturate(dot(r6.xyz, r7.xyz));
    r5.w = 0.5 * r5.y;
    r4.x = dot(r5.xwz, r4.xyz);
    r4.y = 8 * _NoseLinePower.x;
    r4.xy = max(float2(0.00100000005,0.100000001), r4.xy);
    r4.x = log2(r4.x);
    r4.x = r4.y * r4.x;
    r4.x = exp2(r4.x);
    r4.x = min(1, r4.x);
    r2.z = r4.x * r2.z;
    r2.z = (0.100000001 < r2.z);
    r2.z = r2.z ? 1.000000 : 0;
    r4.xyz = _NoseLineColor.xyz + -r0.xyz;
    r4.xyz = r2.zzz * r4.xyz + r0.xyz;
    r2.z = _LipLineFixMax.x + -_LipLineFixStart.x;
    r2.z = max(0.00999999978, r2.z);
    r5.xyz = -_WorldSpaceCameraPos.xyz + v4.xyz;
    r5.x = dot(r5.xyz, r5.xyz);
    r5.x = sqrt(r5.x);
    r5.y = (r5.x < 2);
    r5.z = (5 < r5.x);
    r5.yz = r5.yz ? float2(1.20000005,0.800000012) : float2(1,1);
    r5.w = (r5.x < _LipLineFixStart.x);
    r6.y = -_LipLineFixStart.x + r5.x;
    r2.z = saturate(r6.y / r2.z);
    r2.z = r5.w ? 0 : r2.z;
    r5.y = r5.y * r5.z + -1;
    r5.y = _LipLineFixSC.x * r5.y + 1;
    r5.y = _LipLineFixScale.x * r5.y;
    r5.y = max(0.00999999978, r5.y);
    r5.y = saturate(_LipLineFixThrd.x * r5.y);
    r5.y = -0.0399999991 + r5.y;
    r5.y = r2.z * r5.y + 0.0399999991;
    r5.z = (v2.y < 0.949999988);
    r5.z = r5.z ? v2.y : 0;
    r2.z = 1 + -r2.z;
    r2.z = r5.z + -r2.z;
    r2.z = (r5.y < r2.z);
    r2.yz = r2.yz ? float2(0,0) : float2(1,1);
    r4.xyz = -_LipLinefixColor.xyz + r4.xyz;
    r4.xyz = r2.zzz * r4.xyz + _LipLinefixColor.xyz;
    r5.yzw = float3(1,1,1) + -_EyeBaseShadowColor.xyz;
    r5.yzw = v2.xxx * r5.yzw + _EyeBaseShadowColor.xyz;
    r5.yzw = _Color.xyz * r5.yzw;
    r4.xyz = r5.yzw * r4.xyz;
    r2.z = (_EmissionThreshold.x < r0.w);
    r5.y = -_EmissionThreshold.x + r0.w;
    r5.z = 1 + -_EmissionThreshold.x;
    r5.z = max(0.00100000005, r5.z);
    r5.y = r5.y / r5.z;
    r2.z = r2.z ? r5.y : 0;
    r5.y = (_EmissionThreshold.x >= r0.w);
    r0.w = r0.w / _EmissionThreshold.x;
    r0.w = r5.y ? r0.w : 1;
    r6.yzw = r4.xyz * r2.zzz;
    r4.xyz = r6.yzw * _EmissionIntensity.xxx + r4.xyz;
    r2.z = 1 + -abs(r4.w);
    r2.z = -_FresnelBSI.x + r2.z;
    r4.w = 1 / _FresnelBSI.y;
    r2.z = saturate(r4.w * r2.z);
    r6.yzw = _FresnelColor.xyz * r2.zzz;
    r6.yzw = _FresnelColorStrength.xxx * r6.yzw;
    r6.yzw = max(float3(0,0,0), r6.yzw);
    r5.yw = (float2(0,0.100000001) < r3.xx);
    r7.xy = r5.yw ? float2(1,1) : 0;
    r2.z = (_ExMapThreshold.x < r3.y);
    r4.w = -_ExMapThreshold.x + r3.y;
    r5.y = 1 + -_ExMapThreshold.x;
    r5.y = max(0.00100000005, r5.y);
    r4.w = r4.w / r5.y;
    r2.z = r2.z ? r4.w : 0;
    r4.w = (_ExMapThreshold.x >= r3.y);
    r5.y = max(0.00100000005, _ExMapThreshold.x);
    r3.y = r3.y / r5.y;
    r3.y = r4.w ? r3.y : 1;
    r2.z = _ExSpecularIntensity.x * r2.z;
    r8.xyz = _ExEyeColor.xyz + -_ExShadowColor.xyz;
    r7.xzw = r7.xxx * r8.xyz + _ExShadowColor.xyz;
    r3.y = _ExCheekIntensity.x * r3.y;
    r8.xyz = float3(-1,-1,-1) + _ExCheekColor.xyz;
    r8.xyz = r3.yyy * r8.xyz + float3(1,1,1);
    r3.yz = float2(_ExShyIntensity.x, _ExShadowIntensity.x) * r3.zw;
    r9.xyz = _ExShyColor.xyz + -r8.xyz;
    r8.xyz = r3.yyy * r9.xyz + r8.xyz;
    r7.xzw = -r8.xyz + r7.xzw;
    r3.yzw = r3.zzz * r7.xzw + r8.xyz;
    r3.yzw = r2.zzz * _ExCheekIntensity.xxx + r3.yzw;
    r2.z = -_ShadowFeather.x + v6.z;
    r2.z = max(9.99999975e-005, r2.z);
    r4.w = _ShadowFeather.x + v6.z;
    r4.w = min(0.999899983, r4.w);
    r4.w = r4.w + -r2.z;
    r2.z = r2.w + -r2.z;
    r2.w = 1 / r4.w;
    r2.z = saturate(r2.z * r2.w);
    r2.w = r2.z * -2 + 3;
    r2.z = r2.z * r2.z;
    r2.z = r2.w * r2.z;
    r2.w = max(0.00999999978, _CharacterLocalMainLightPosition.w);
    r3.x = (r3.x < 0.800000012);
    r3.x = r5.w ? r3.x : 0;
    r4.w = r3.x ? -1 : -0;
    r4.w = r7.y + r4.w;
    r7.xz = r3.xx ? float2(1,0.5) : 0;
    r3.x = r7.z + r4.w;
    r4.w = -0.360000014 + _EyeShadowAngleMin.x;
    r5.y = _EyeShadowMaxAngle.x + -r4.w;
    r4.w = v4.w + -r4.w;
    r5.y = 1 / r5.y;
    r4.w = saturate(r5.y * r4.w);
    r5.y = r4.w * -2 + 3;
    r4.w = r4.w * r4.w;
    r4.w = r5.y * r4.w;
    r4.w = r3.x * r4.w + -1;
    r3.x = r3.x * r4.w + 1;
    r8.xyz = _EyeShadowColor.xyz + -_ShadowColor.xyz;
    r8.xyz = r7.yyy * r8.xyz + _ShadowColor.xyz;
    r9.xyz = float3(-1,-1,-1) + _CharacterLocalMainLightDark1.xyz;
    r9.xyz = _NewLocalLightStrength.zzz * r9.xyz + float3(1,1,1);
    r10.xyz = r9.xyz * r8.xyz;
    r2.x = r2.z * r2.x;
    r2.z = r2.x * r3.x;
    r8.xyz = -r8.xyz * r9.xyz + float3(1,1,1);
    r8.xyz = r2.zzz * r8.xyz + r10.xyz;
    r2.z = (0.5 < _ES_LEVEL_ADJUST_ON.x);
    r9.xyz = _ES_LevelSkinLightColor.xyz * _ES_LevelSkinLightColor.www;
    r10.xyz = r9.xyz + r9.xyz;
    r11.xyz = _ES_LevelSkinShadowColor.xyz * _ES_LevelSkinShadowColor.www;
    r12.xyz = r11.xyz + r11.xyz;
    r13.xyz = r9.xyz * float3(2,2,2) + -r12.xyz;
    r13.xyz = r3.xxx * r13.xyz + r12.xyz;
    r13.xyz = float3(-1,-1,-1) + r13.xyz;
    r13.xyz = _ES_LevelEyeShadowIntensity.xxx * r13.xyz + float3(1,1,1);
    r2.x = (r2.x >= r2.w);
    r14.xyz = -_ES_LevelMid.xxx + r8.xyz;
    r7.zw = float2(_ES_LevelHighLight.x, _ES_LevelMid.x) + -float2(_ES_LevelMid.x, _ES_LevelShadow.x);
    r14.xyz = r14.xyz / r7.zzz;
    r14.xyz = saturate(r14.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r9.xyz = -r9.xyz * float3(2,2,2) + r13.xyz;
    r9.xyz = r7.yyy * r9.xyz + r10.xyz;
    r9.xyz = r14.xyz * r9.xyz;
    r10.xyz = _ES_LevelMid.xxx + -r8.xyz;
    r10.xyz = r10.xyz / r7.www;
    r10.xyz = saturate(-r10.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r11.xyz = -r11.xyz * float3(2,2,2) + r13.xyz;
    r11.xyz = r7.yyy * r11.xyz + r12.xyz;
    r10.xyz = r11.xyz * r10.xyz;
    r9.xyz = r2.xxx ? r9.xyz : r10.xyz;
    r2.xzw = r2.zzz ? r9.xyz : r8.xyz;
    r2.xzw = r2.xzw * r4.xyz;
    r3.x = dot(r2.xzw, float3(0.300000012,0.589999974,0.109999999));
    r4.w = saturate(_EyeEffectProcs.x * r7.x);
    r8.xyz = _EyeEffectColor.xyz * r3.xxx;
    r9.xyz = r3.xxx * _EyeEffectColor.xyz + -r2.xzw;
    r9.xyz = r4.www * r9.xyz + r2.xzw;
    r8.xyz = r8.xyz * r3.xxx + r9.xyz;
    r3.x = r3.x * 0.5 + 1;
    r8.xyz = r8.xyz * r3.xxx + -r2.xzw;
    r2.xzw = saturate(r4.www * r8.xyz + r2.xzw);
    r3.x = (0.5 < _UseSpecialEye.x);
    if (r3.x != 0) {
      r7.zw = v1.yx * _SpecialEyeShapeTexture_ST.yx + _SpecialEyeShapeTexture_ST.wz;
      r8.xy = _EyeCenter.zw * _Time.yy;
      r7.zw = -_EyeCenter.yx + r7.zw;
      sincos(r8.x, r3.x, r8.x);
      r8.zw = r7.zw * r3.xx;
      r9.x = r7.w * r8.x + -r8.z;
      r9.y = r7.z * r8.x + r8.w;
      r8.xz = _EyeCenter.xy + r9.xy;
      sincos(r8.y, r3.x, r9.x);
      r8.yw = r7.zw * r3.xx;
      r10.x = r7.w * r9.x + -r8.y;
      r10.y = r7.z * r9.x + r8.w;
      r7.zw = _EyeCenter.xy + r10.xy;
      r3.x = _SpecialEyeShapeTexture.Sample(s2_s, r8.xz).x;
      r4.w = _SpecialEyeShapeTexture.Sample(s2_s, r7.zw).y;
      r4.w = r4.w * r7.x;
      r4.w = _EyeSPColor2.w * r4.w;
      r8.xyz = _EyeSPColor2.xyz + -r2.xzw;
      r8.xyz = r4.www * r8.xyz + r2.xzw;
      r3.x = r3.x * r7.x;
      r3.x = _EyeSPColor1.w * r3.x;
      r9.xyz = _EyeSPColor1.xyz + -r8.xyz;
      r8.xyz = r3.xxx * r9.xyz + r8.xyz;
      r3.x = r7.x + r7.y;
      r4.w = -1 + _SpecialEyeIntensity.x;
      r3.x = r3.x * r4.w + 1;
      r2.xzw = r8.xyz * r3.xxx;
    }
    r3.x = _FaceMap.Sample(s3_s, v7.xy).w;
    r7.yz = saturate(float2(-0.100000001,0.100000001) + v7.zz);
    r4.w = r7.z + -r7.y;
    r3.x = -r7.y + r3.x;
    r4.w = 1 / r4.w;
    r3.x = saturate(r4.w * r3.x);
    r4.w = r3.x * -2 + 3;
    r3.x = r3.x * r3.x;
    r3.x = r4.w * r3.x;
    r7.yzw = -_NewLocalLightCharCenter.xyz + v4.xyz;
    r4.w = dot(r7.yzw, r7.yzw);
    r4.w = rsqrt(r4.w);
    r7.yzw = r7.yzw * r4.www;
    r4.w = dot(r7.yzw, _NewLocalLightDir.xyz);
    r4.w = r4.w * 0.5 + 0.5;
    r8.xyzw = float4(1,1,1,1) + -_CharacterLocalMainLightColor1.wxyz;
    r3.x = r8.x * r3.x;
    r3.x = 0.949999988 * r3.x;
    r3.x = _CharacterLocalMainLightColor1.w * r4.w + r3.x;
    r2.y = r3.x * r2.y;
    r1.x = r1.x * 0.5 + 0.5;
    r1.x = r2.y * r1.x;
    r7.yz = _NewLocalLightStrength.xy * r1.xx;
    r9.xyz = (r2.xzw < float3(0.5,0.5,0.5));
    r10.xyz = r2.xzw + r2.xzw;
    r10.xyz = _CharacterLocalMainLightColor1.xyz * r10.xyz;
    r11.xyz = float3(1,1,1) + -r2.xzw;
    r11.xyz = r11.xyz + r11.xyz;
    r8.xyz = -r11.xyz * r8.yzw + float3(1,1,1);
    r8.xyz = r9.xyz ? r10.xyz : r8.xyz;
    r8.xyz = r8.xyz + -r2.xzw;
    r2.xyz = r7.yyy * r8.xyz + r2.xzw;
    r1.x = r5.w ? 0 : 1;
    r1.x = r7.z * r1.x;
    r2.xyz = r1.xxx * _CharacterLocalMainLightColor2.xyz + r2.xyz;
    r1.x = (0.5 < v1.x);
    r2.w = 1 + -v1.x;
    r8.x = r1.x ? r2.w : v1.x;
    r8.y = v1.y;
    r1.x = _FaceMap.Sample(s3_s, r8.xy).w;
    r2.w = 1 + -r6.x;
    r2.w = max(0.00100000005, r2.w);
    r2.w = log2(r2.w);
    r2.w = _RimShadowCt.x * r2.w;
    r2.w = exp2(r2.w);
    r2.w = saturate(_RimShadowWidth.x * r2.w);
    r3.x = 1 + -_RimShadowFeather.x;
    r2.w = -_RimShadowFeather.x + r2.w;
    r3.x = 1 / r3.x;
    r2.w = saturate(r3.x * r2.w);
    r3.x = r2.w * -2 + 3;
    r2.w = r2.w * r2.w;
    r2.w = r3.x * r2.w;
    r7.yzw = float3(1,1,1) + -_RimShadowColor.xyz;
    r7.yzw = r7.yzw * r2.www;
    r7.yzw = _RimShadowIntensity.xxx * r7.yzw;
    r1.x = 1 + -r1.x;
    r7.yzw = r1.xxx * -r7.yzw + float3(1,1,1);
    r2.xyz = r2.xyz * r3.yzw;
    r1.xyz = r2.xyz * r1.yzw;
    r1.w = r7.x * -_mBloomIntensity0.x + _mBloomIntensity0.x;
    r2.xyz = r1.www * r4.xyz;
    r1.xyz = r1.xyz * r7.yzw + r2.xyz;
    r1.xyz = r1.xyz + r6.yzw;
    r1.xyz = _ES_AddColor.xyz * r4.xyz + r1.xyz;
    r1.w = (_EmissionThreshold.x < r0.w);
    r0.w = -_EmissionThreshold.x + r0.w;
    r0.w = r0.w / r5.z;
    r0.w = r1.w ? r0.w : 0;
    r0.w = saturate(r0.w);
    r2.xyz = r4.xyz * _EmissionIntensity.xxx + -r1.xyz;
    r1.xyz = r0.www * r2.xyz + r1.xyz;
    r0.w = -_CharaWorldSpaceOffset.y + v4.y;
    r1.w = max(0.00100000005, _ES_HeightLerpBottom.x);
    r1.w = 1 / r1.w;
    r1.w = saturate(r1.w * r0.w);
    r2.x = r1.w * -2 + 3;
    r1.w = r1.w * r1.w;
    r1.w = -r2.x * r1.w + 1;
    r0.w = -_ES_HeightLerpTop.x + r0.w;
    r0.w = saturate(r0.w + r0.w);
    r2.x = r0.w * -2 + 3;
    r0.w = r0.w * r0.w;
    r2.y = r2.x * r0.w;
    r2.z = 1 + -r1.w;
    r0.w = saturate(-r2.x * r0.w + r2.z);
    r2.xzw = _ES_HeightLerpBottomColor.xyz * r1.www;
    r3.xyz = _ES_HeightLerpMiddleColor.xyz * r0.www;
    r3.xyz = _ES_HeightLerpMiddleColor.www * r3.xyz;
    r2.xzw = r2.xzw * _ES_HeightLerpBottomColor.www + r3.xyz;
    r3.xyz = _ES_HeightLerpTopColor.xyz * r2.yyy;
    r2.xyz = saturate(r3.xyz * _ES_HeightLerpTopColor.www + r2.xzw);
    r2.xyz = r2.xyz + r2.xyz;
    r1.xyz = r2.xyz * r1.xyz;
    r0.w = 1 + _mBloomIntensity0.x;
    r1.xyz = r1.xyz * r0.www;
    r0.w = -_GlobalOneMinusAvatarIntensityEnable.x * _GlobalOneMinusAvatarIntensity.x + 1;
    r1.xyz = r1.xyz * r0.www;
    r2.xz = float2(_ES_FogNear.x, _ES_FogFar.x);
    r2.yw = float2(_ES_HeightFogFogNear.x, _ES_HeightFogFogFar.x);
    r3.xy = r2.zw + -r2.xy;
    r2.xy = _ES_FogCharacterNearFactor.xx * r3.xy + r2.xy;
    r3.xy = r5.xx + -r2.xy;
    r2.xy = r2.zw + -r2.xy;
    r2.xy = saturate(r3.xy / r2.xy);
    r3.x = _ES_FogDensity.x;
    r3.y = _ES_HeightFogDensity.x;
    r2.xy = r3.xy * r2.xy;
    r2.zw = -r2.xy * r2.xy + r2.xy;
    r2.xy = r2.xy * r2.zw + r2.xy;
    r0.w = dot(v4.xyz, _ES_GlobalRotMatrix[3].xyz);
    r0.w = -_ES_GlobalRotMatrix[3].w + r0.w;
    r1.w = (0 < _ES_HeightFogRange.x);
    r3.x = -_ES_HeightFogBaseHeight.x + r0.w;
    r0.w = _ES_HeightFogBaseHeight.x + -r0.w;
    r0.w = r1.w ? r3.x : r0.w;
    r1.w = 1 + abs(_ES_HeightFogRange.x);
    r0.w = max(0, r0.w);
    r0.w = r0.w / r1.w;
    r0.w = min(1, r0.w);
    r0.w = 1 + -r0.w;
    r1.w = saturate(r0.w * _ES_HeightFogDensity.x + -1);
    r3.x = 1 + -_ES_DisableFogTransition.x;
    r3.x = _ES_TransitionRate.x * r3.x;
    r2.z = r3.x * 0.125 + _ES_FogColor.x;
    r3.yzw = _ES_GradientAtlas.SampleLevel(s7_s, r2.xz, 0).xyz;
    r2.z = saturate(-1 + _ES_FogDensity.x);
    r4.xy = saturate(r2.xy);
    r5.xyz = r3.yzw * r4.xxx + -r1.xyz;
    r1.xyz = r4.xxx * r5.xyz + r1.xyz;
    r3.yzw = r3.yzw * r4.xxx + r1.xyz;
    r1.xyz = r3.yzw * r2.zzz + r1.xyz;
    r2.w = r3.x * 0.125 + _ES_HeightFogColor.x;
    r2.xyz = _ES_GradientAtlas.SampleLevel(s7_s, r2.yw, 0).xyz;
    r3.xyz = r2.xyz * r0.www;
    r4.xzw = r3.xyz * r4.yyy + -r1.xyz;
    r4.xzw = r4.yyy * r4.xzw + r1.xyz;
    r3.xyz = r3.xyz * r4.yyy + r4.xzw;
    r3.xyz = r3.xyz * r1.www + r4.xzw;
    r1.w = max(r2.y, r2.z);
    r1.w = max(r2.x, r1.w);
    r2.xyz = r3.xyz * r0.www;
    r2.xyz = r2.xyz * r4.yyy + r1.xyz;
    r3.xyz = r3.xyz + -r1.xyz;
    r1.xyz = r0.www * r3.xyz + r1.xyz;
    r0.w = _ES_HeightFogAddAjust.x * -r1.w + r1.w;
    r2.xyz = r2.xyz + -r1.xyz;
    r1.xyz = r0.www * r2.xyz + r1.xyz;
    r0.w = (0 < asint(_VolumetricFogEnable.x));
    if (r0.w != 0) {
      r2.xy = v3.xy / v3.ww;
      r3.xy = r2.xy * float2(2,2) + float2(-1,-1);
      r3.yz = MATRIX_IT_P[1].zw * r3.yy;
      r3.xy = MATRIX_IT_P[0].zw * r3.xx + r3.yz;
      r3.xy = MATRIX_IT_P[2].zw * v0.zz + r3.xy;
      r3.xy = MATRIX_IT_P[3].zw + r3.xy;
      r0.w = -r3.x / r3.y;
      r0.w = r0.w * _SliceZParams.x + _SliceZParams.y;
      r0.w = max(9.99999975e-005, r0.w);
      r0.w = log2(r0.w);
      r2.z = _SliceZParams.z * r0.w;
      r2.xyzw = _FogTex.SampleLevel(s0_s, r2.xyz, 0).xyzw;
      r1.xyz = r1.xyz * r2.www + r2.xyz;
    }
    r0.w = dot(float3(1,1,1), abs(v5.xyz));
    r0.w = max(9.99999975e-005, r0.w);
    r2.xy = v5.xy / r0.ww;
    r0.w = (0 >= v5.z);
    r2.zw = float2(1,1) + -abs(r2.yx);
    r3.xy = (r2.xy >= float2(0,0));
    r3.xy = r3.xy ? float2(1,1) : float2(-1,-1);
    r2.zw = r3.xy * r2.zw;
    r2.xy = r0.ww ? r2.zw : r2.xy;
    o1.xy = r2.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r0.z = r0.z * 127 + 128;
    r0.z = trunc(r0.z);
    o1.z = 1.52590219e-005 * r0.z;
    r1.w = r0.x;
    o0.xyzw = r1.xyzw;
    o1.w = r0.y;
    o2.xy = float2(0,0);
    return;
}
