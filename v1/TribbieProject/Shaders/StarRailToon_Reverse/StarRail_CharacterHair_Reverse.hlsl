#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

#define _EnableCustomCameraOverride float(0)
#define _HideCharaParts int(1)
#define _ShowPartID int(179)
#define _MainTex_ST float4(1, 1, 0, 0)
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

#define _MainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _CharacterLocalMainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _CharacterLocalMainLightColor1 float4(0, 0, 0, 0)
#define _CharacterLocalMainLightColor2 float4(0, 0, 0, 0)
#define _CharacterLocalMainLightDark float4(0, 0, 0, 0)
#define _NewLocalLightDir float4(0, 0, 0, 0)
#define _NewLocalLightCharCenter float4(0, 0, 0, 0)
#define _NewLocalLightStrength float4(0, 0, 0, 0)
#define _DisableCharacterLocalLight float(0)
#define _MainLightWorldToShadowArr float4x4(0.10422597, -0.038679726, -0.0007523565, 0, -1.0353922E-08, -0.09219322, 0.0012626058, 0, 0.060174905, 0.06699522, 0.0013031194, 0, -43.7041, -3.9868202, -0.5940366, 1)
#define _CascadeShadowSplitSpheres0 float4(188.5324, 168.75716, 408.05258, 4.134364)
#define _CascadeShadowSplitSpheres1 float4(177.9075, 166.43645, 420.43933, 13.613332)
#define _CascadeShadowSplitSpheres2 float4(138.06415, 157.73378, 466.88986, 54.392616)
#define _CascadeShadowSplitSpheres3 float4(49.080673, 138.29784, 570.6293, 112.45557)
#define _CascadeShadowSplitSphereRadii float4(17.092966, 185.3228, 2958.5566, 12646.255)
#define _MainLightShadowParams float4(1, 1, 0, 0)
#define _MainLightShadowmapSize float4(0.00048828125, 0.00048828125, 2048, 2048)
#define _IsMonster float(0)
#define _Color float4(1, 1, 1, 1)
#define _BackColor float4(1, 1, 1, 1)
#define _ShadowRamp float(1)
#define _ShadowBoost float(0)
#define _ShadowBoostVal float(0)
#define _RimShadowWidth0 float(1)
#define _RimShadowColor0 float3(1, 1, 1)
#define _RimShadowFeather0 float(0.873)
#define _RimShadowCt float(0.9)
#define _RimShadowIntensity float(1)
#define _RimShadowOffset float4(0, 0, 0, 0)
#define _ES_MonsterLightDir float3(0.27059788, 0.7071069, 0.65328157)
#define _CustomMainLightDir float4(0, 0, 0, 0)
#define _ES_Indoor float(0)
#define _ES_LEVEL_ADJUST_ON float(1)
#define _ES_CharacterToonRampMode float(0)
#define _ES_CharacterDisableLocalMainLight float(0)
#define _ES_RimShadowColor float4(1, 1, 1, 0.5019608)
#define _ES_RimShadowIntensity float(1)
#define _ES_CharacterShadowFactor float(0)
#define _ES_LevelHighLightColor float4(1, 1, 1, 0.5)
#define _ES_LevelShadowColor float4(1, 1, 1, 0.5)
#define _ES_LevelShadow float(0)
#define _ES_LevelMid float(0.55)
#define _ES_LevelHighLight float(1)
#define _ES_IndoorCharShadowAsCookie float(0)

#define _MainLightShadowmapTexture _MainLightShadowmapTexture_Custom

TEXTURE2D(_MainTex);
TEXTURE2D(_LightMap);
TEXTURE2D(_DiffuseCoolRampMultiTex);
TEXTURE2D(_DiffuseRampMultiTex);
TEXTURE2D(_MainLightShadowmapTexture);

#define s0_s sampler_LinearRepeat
#define s1_s sampler_LinearRepeat
#define s2_s sampler_LinearClamp
#define s3_s sampler_LinearClamp
#define s4_s sampler_LinearClampCompare

void Vertex(
    float4 v0 : POSITION0,
    float3 v1 : NORMAL0,
    float4 v2 : TANGENT0,
    float4 v3 : TEXCOORD0,
    float2 v4 : TEXCOORD1,
    float4 v5 : COLOR0,
    float2 v6 : TEXCOORD2,
    uint v7 : SV_VertexID0,
    out float4 o0 : SV_POSITION0,
    out float4 o1 : TEXCOORD0,
    out float4 o2 : TEXCOORD16,
    out float4 o3 : TEXCOORD1,
    out float4 o4 : TEXCOORD2,
    out float4 o5 : TEXCOORD3,
    out float4 o6 : TEXCOORD4)
  {
    float4 r0,r1,r2,r3;
    uint4 bitmask, uiDest;
    float4 fDest;

    float4x4 MATRIX_T_M = transpose(UNITY_MATRIX_M);
    float4x4 MATRIX_IT_M = transpose(UNITY_MATRIX_I_M);
    float4x4 MATRIX_T_VP = transpose(UNITY_MATRIX_VP);
    float4x4 MATRIX_T_MVP = transpose(UNITY_MATRIX_MVP);
  
    r0.x = 256 * v5.y;
    r0.x = (int)r0.x;
    r0.x = (int)r0.x & asint(_ShowPartID.x);
    r0.x = (0 < (int)r0.x);
    r0.y = (0 < asint(_HideCharaParts.x));
    r0.x = r0.y ? r0.x : -1;
    r1.xyzw = MATRIX_T_MVP[1].xyzw * v0.yyyy;
    r1.xyzw = MATRIX_T_MVP[0].xyzw * v0.xxxx + r1.xyzw;
    r1.xyzw = MATRIX_T_MVP[2].xyzw * v0.zzzz + r1.xyzw;
    r1.xyzw = MATRIX_T_MVP[3].xyzw + r1.xyzw;
    r0.yzw = MATRIX_T_M[1].xyz * v0.yyy;
    r0.yzw = MATRIX_T_M[0].xyz * v0.xxx + r0.yzw;
    r0.yzw = MATRIX_T_M[2].xyz * v0.zzz + r0.yzw;
    r0.yzw = MATRIX_T_M[3].xyz + r0.yzw;
    r2.xyzw = MATRIX_T_VP[1].xyzw * r0.zzzz;
    r2.xyzw = MATRIX_T_VP[0].xyzw * r0.yyyy + r2.xyzw;
    r2.xyzw = MATRIX_T_VP[2].xyzw * r0.wwww + r2.xyzw;
    r2.xyzw = MATRIX_T_VP[3].xyzw + r2.xyzw;
    r3.x = (0.5 < _EnableCustomCameraOverride.x);
    r1.xyzw = r3.xxxx ? r2.xyzw : r1.xyzw;
    o0.xyzw = r0.xxxx ? r1.xyzw : float4(-99,-99,-99,1);
    o1.xy = v3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    o1.zw = v4.xy;
    o2.xyz = float3(0,0,0);
    r0.x = _ProjectionParams.x * r1.y;
    r2.w = 0.5 * r0.x;
    r2.xz = float2(0.5,0.5) * r1.xw;
    o3.zw = r1.zw;
    o3.xy = r2.xw + r2.zz;
    o4.xyz = r0.yzw;
    r0.xyz = _WorldSpaceCameraPos.xyz + -r0.yzw;
    o5.x = dot(v1.xyz, MATRIX_IT_M[0].xyz);
    o5.y = dot(v1.xyz, MATRIX_IT_M[1].xyz);
    o5.z = dot(v1.xyz, MATRIX_IT_M[2].xyz);
    r1.xyz = MATRIX_IT_M[1].xyz * r0.yyy;
    r1.xyz = MATRIX_IT_M[0].xyz * r0.xxx + r1.xyz;
    r1.xyz = MATRIX_IT_M[2].xyz * r0.zzz + r1.xyz;
    o6.xyz = r0.xyz;
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = rsqrt(r0.x);
    r0.xy = r1.xy * r0.xx;
    o6.w = dot(float2(0.275999993,0.961000025), r0.xy);
    return;
}

void Fragment(
    float4 v0 : SV_POSITION0,
    float4 v1 : TEXCOORD0,
    float4 v2 : TEXCOORD16,
    float4 v3 : TEXCOORD1,
    float4 v4 : TEXCOORD2,
    float4 v5 : TEXCOORD3,
    float4 v6 : TEXCOORD4,
    uint v7 : SV_IsFrontFace0,
    out float4 o0 : SV_Target0,
    out float4 o1 : SV_Target1,
    out float2 o2 : SV_Target2)
{
    float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
    uint4 bitmask, uiDest;
    float4 fDest;

    float4x4 MATRIX_T_V = transpose(UNITY_MATRIX_V);

    r0.xyz = -_CascadeShadowSplitSpheres0.xyz + v4.xyz;
    r0.x = dot(r0.xyz, r0.xyz);
    r1.xyz = -_CascadeShadowSplitSpheres1.xyz + v4.xyz;
    r0.y = dot(r1.xyz, r1.xyz);
    r1.xyz = -_CascadeShadowSplitSpheres2.xyz + v4.xyz;
    r0.z = dot(r1.xyz, r1.xyz);
    r1.xyz = -_CascadeShadowSplitSpheres3.xyz + v4.xyz;
    r0.w = dot(r1.xyz, r1.xyz);
    r0.xyzw = (r0.xyzw < _CascadeShadowSplitSphereRadii.xyzw);
    r1.xyz = r0.xyz ? float3(-1,-1,-1) : float3(-0,-0,-0);
    r0.xyzw = r0.xyzw ? float4(1,1,1,1) : 0;
    r2.xy = r0.zw;
    r2.w = r1.x;
    r2.xyz = r2.wxy + r1.xyz;
    r1.xyz = r2.xwz + r1.xxy;
    r0.zw = r2.yw;
    r1.xyz = r1.xyz + r0.yzw;
    r0.yzw = max(float3(0,0,0), r1.xyz);
    r0.x = dot(r0.xyzw, float4(4,3,2,1));
    r0.z = 4 + -r0.x;
    r1.z = r0.z;
    r0.w = (uint)r1.z;
    r0.w = (uint)r0.w << 2;
    r2.xyz = _MainLightWorldToShadowArr[1].xyz * v4.yyy;
    r2.xyz = _MainLightWorldToShadowArr[0].xyz * v4.xxx + r2.xyz;
    r2.xyz = _MainLightWorldToShadowArr[2].xyz * v4.zzz + r2.xyz;
    r2.xyz = _MainLightWorldToShadowArr[3].xyz + r2.xyz;
    r3.xy = r2.xy * _MainLightShadowmapSize.zw + float2(0.5,0.5);
    r3.xy = floor(r3.xy);
    r3.zw = r2.xy * _MainLightShadowmapSize.zw + -r3.xy;
    r4.xy = float2(1,1) + -r3.zw;
    r4.zw = min(float2(0,0), r3.zw);
    r4.xy = -r4.zw * r4.zw + r4.xy;
    r4.xy = float2(2,2) + r4.xy;
    r4.xy = float2(0.0816320032,0.0816320032) * r4.xy;
    r5.y = r4.x;
    r6.xy = max(float2(0,0), r3.zw);
    r7.xyzw = float4(0.5,1,0.5,1) + r3.zzww;
    r6.xy = -r6.xy * r6.xy + r7.yw;
    r7.xyzw = r7.xxzz * r7.xxzz;
    r6.xy = float2(2,2) + r6.xy;
    r8.z = 0.0816320032 * r6.x;
    r6.z = 0.0816320032 * r6.y;
    r7.xz = r7.xz * float2(0.5,0.5) + -r3.zw;
    r5.zw = float2(0.0408160016,0.0408160016) * r7.wy;
    r6.xy = float2(0.0816320032,0.0816320032) * r7.zx;
    r8.x = r6.y;
    r8.yw = r3.zz * float2(-0.0816320032,0.0816320032) + float2(0.163264006,0.0816320032);
    r4.w = r5.z;
    r5.xz = r3.zz * float2(-0.0816320032,0.0816320032) + float2(0.0816320032,0.163264006);
    r7.xyzw = r8.xyzw + r5.xyzw;
    r5.xyzw = r5.xyzw / r7.xyzw;
    r5.xyzw = float4(-3.5,-1.5,0.5,2.5) + r5.xyzw;
    r5.xyzw = _MainLightShadowmapSize.xxxx * r5.wxyz;
    r8.xzw = r5.yzw;
    r6.yw = r3.ww * float2(-0.0816320032,0.0816320032) + float2(0.163264006,0.0816320032);
    r4.xz = r3.ww * float2(-0.0816320032,0.0816320032) + float2(0.0816320032,0.163264006);
    r6.xyzw = r6.xyzw + r4.xyzw;
    r4.xyzw = r4.xyzw / r6.xyzw;
    r4.xyzw = float4(-3.5,-1.5,0.5,2.5) + r4.xyzw;
    r4.xyzw = _MainLightShadowmapSize.yyyy * r4.xwyz;
    r8.y = r4.x;
    r1.xy = r3.xy * _MainLightShadowmapSize.xy + r8.zy;
    r0.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r1.xyz, r2.z).x;
    r9.xyzw = r7.xyzw * r6.xxxx;
    r0.w = r9.y * r0.w;
    r0.xy = r3.xy * _MainLightShadowmapSize.xy + r8.xy;
    r0.x = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r0.xyz, r2.z).x;
    r0.x = r9.x * r0.x + r0.w;
    r1.xy = r3.xy * _MainLightShadowmapSize.xy + r8.wy;
    r5.y = r8.y;
    r10.xy = r3.xy * _MainLightShadowmapSize.xy + r5.xy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r1.xyz, r2.z).x;
    r10.z = r1.z;
    r0.x = r9.z * r0.y + r0.x;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r10.xyz, r2.z).x;
    r0.x = r9.w * r0.y + r0.x;
    r8.y = r4.z;
    r10.xy = r3.xy * _MainLightShadowmapSize.xy + r8.xy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r10.xyz, r2.z).x;
    r1.xyzw = r7.xyzw * r6.yyyy;
    r0.x = r1.x * r0.y + r0.x;
    r10.xy = r3.xy * _MainLightShadowmapSize.xy + r8.zy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r10.xyz, r2.z).x;
    r0.x = r1.y * r0.y + r0.x;
    r10.xy = r3.xy * _MainLightShadowmapSize.xy + r8.wy;
    r5.z = r8.y;
    r9.xy = r3.xy * _MainLightShadowmapSize.xy + r5.xz;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r10.xyz, r2.z).x;
    r9.z = r10.z;
    r0.x = r1.z * r0.y + r0.x;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r9.xyz, r2.z).x;
    r0.x = r1.w * r0.y + r0.x;
    r8.y = r4.w;
    r9.xy = r3.xy * _MainLightShadowmapSize.xy + r8.xy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r9.xyz, r2.z).x;
    r1.xyzw = r7.xyzw * r6.zzzz;
    r6.xyzw = r7.xyzw * r6.wwww;
    r0.x = r1.x * r0.y + r0.x;
    r9.xy = r3.xy * _MainLightShadowmapSize.xy + r8.zy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r9.xyz, r2.z).x;
    r0.x = r1.y * r0.y + r0.x;
    r9.xy = r3.xy * _MainLightShadowmapSize.xy + r8.wy;
    r4.xzw = r8.xzw;
    r5.w = r8.y;
    r7.xy = r3.xy * _MainLightShadowmapSize.xy + r5.xw;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r9.xyz, r2.z).x;
    r7.z = r9.z;
    r0.x = r1.z * r0.y + r0.x;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r7.xyz, r2.z).x;
    r0.x = r1.w * r0.y + r0.x;
    r7.xy = r3.xy * _MainLightShadowmapSize.xy + r4.xy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r7.xyz, r2.z).x;
    r0.x = r6.x * r0.y + r0.x;
    r7.xy = r3.xy * _MainLightShadowmapSize.xy + r4.zy;
    r1.xy = r3.xy * _MainLightShadowmapSize.xy + r4.wy;
    r5.y = r4.y;
    r3.xy = r3.xy * _MainLightShadowmapSize.xy + r5.xy;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r7.xyz, r2.z).x;
    r1.z = r7.z;
    r0.x = r6.y * r0.y + r0.x;
    r0.y = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r1.xyz, r2.z).x;
    r3.z = r1.z;
    r0.z = _MainLightShadowmapTexture.SampleCmpLevelZero(s4_s, r3.xyz, r2.z).x;
    r0.x = r6.z * r0.y + r0.x;
    r0.x = r6.w * r0.z + r0.x;
    r0.y = 1 + -_MainLightShadowParams.x;
    r0.x = r0.x * _MainLightShadowParams.x + r0.y;
    r0.yz = float2(4,4) * _MainLightShadowmapSize.xy;
    r0.yz = (r0.yz >= r2.xy);
    r0.y = (int)r0.z | (int)r0.y;
    r0.zw = -_MainLightShadowmapSize.xy * float2(4,4) + float2(1,1);
    r0.zw = (r2.xy >= r0.zw);
    r0.z = (int)r0.w | (int)r0.z;
    r0.y = (int)r0.z | (int)r0.y;
    r0.z = (0 >= r2.z);
    r0.w = (r2.z >= 1);
    r0.z = (int)r0.w | (int)r0.z;
    r0.y = (int)r0.y | (int)r0.z;
    r0.x = r0.y ? 1 : r0.x;
    r0.y = 1 + -r0.x;
    r0.z = _ES_IndoorCharShadowAsCookie.x * _ES_Indoor.x;
    r0.y = r0.z * r0.y + r0.x;
    r0.x = r0.x * 0.800000012 + -0.800000012;
    r0.x = r0.z * r0.x + 1;
    r0.z = 1 + -r0.y;
    r0.y = _ES_CharacterShadowFactor.x * r0.z + r0.y;
    r0.z = 1 + -r0.y;
    r0.z = _CharacterLocalMainLightPosition.w * r0.z + r0.y;
    r0.w = (0.5 < _ES_CharacterDisableLocalMainLight.x);
    r0.y = r0.w ? r0.y : r0.z;
    r0.z = r0.w ? 0 : 1;
    r0.w = saturate(6.66666651 * r0.y);
    r1.x = r0.w * -2 + 3;
    r0.w = r0.w * r0.w;
    r0.w = r1.x * r0.w;
    r1.x = 1 + _ShadowBoostVal.x;
    r1.y = 1 + -r1.x;
    r0.w = r0.w * r1.y + r1.x;
    r1.x = (r0.y < 0.100000001);
    r1.y = _LightMap.Sample(s1_s, v1.xy).y;
    r1.z = min(0.800000012, r1.y);
    r1.y = r1.y + r1.y;
    r1.x = r1.x ? r1.z : 1;
    r1.z = 1 + _ES_CharacterDisableLocalMainLight.x;
    r1.z = -abs(_DisableCharacterLocalLight.x) + r1.z;
    r1.z = (0.5 < r1.z);
    r2.xyz = r1.zzz ? _MainLightPosition.xyz : _CharacterLocalMainLightPosition.xyz;
    r1.z = (0.5 < _IsMonster.x);
    r2.xyz = r1.zzz ? _ES_MonsterLightDir.xyz : r2.xyz;
    r3.xyz = _CustomMainLightDir.xyz + -r2.xyz;
    r2.xyz = _CustomMainLightDir.www * r3.xyz + r2.xyz;
    r2.xyz = r1.zzz ? _ES_MonsterLightDir.xyz : r2.xyz;
    r1.z = dot(v5.xyz, v5.xyz);
    r1.z = rsqrt(r1.z);
    r3.xyz = v5.xyz * r1.zzz;
    r1.z = v7.x ? 1 : -1;
    r3.xyz = r3.xyz * r1.zzz;
    r1.z = dot(r3.xyz, r2.xyz);
    r1.z = saturate(r1.z * 0.5 + 0.5);
    r1.y = dot(r1.zz, r1.yy);
    r1.y = min(r1.y, r0.x);
    r0.y = r1.y * r0.y;
    r1.y = max(0.00100000005, r0.y);
    r0.y = (_ShadowRamp.x < r0.y);
    r1.y = r1.y * 0.850000024 + 0.150000006;
    r0.y = r0.y ? 0.99000001 : r1.y;
    r1.y = r0.y * r1.x + -0.800000012;
    r2.x = r0.y * r1.x;
    r0.y = saturate(10.0000038 * r1.y);
    r1.x = r0.y * -2 + 3;
    r0.y = r0.y * r0.y;
    r0.y = -r1.x * r0.y + 1;
    r0.y = _NewLocalLightStrength.z * r0.y;
    r1.xyz = float3(-1,-1,-1) + _CharacterLocalMainLightDark.xyz;
    r1.xyz = r0.yyy * r1.xyz + float3(1,1,1);
    r2.y = 0.0625;
    r4.xyz = _DiffuseCoolRampMultiTex.Sample(s2_s, r2.xy).xyz;
    r2.xyz = _DiffuseRampMultiTex.Sample(s3_s, r2.xy).xyz;
    r4.xyz = r4.xyz + -r2.xyz;
    r0.y = saturate(_ES_CharacterToonRampMode.x);
    r2.xyz = r0.yyy * r4.xyz + r2.xyz;
    r4.xyz = r2.xyz * r1.xyz + -_ES_LevelMid.xxx;
    r5.xy = float2(_ES_LevelHighLight.x, _ES_LevelMid.x) + -float2(_ES_LevelMid.x, _ES_LevelShadow.x);
    r4.xyz = r4.xyz / r5.xxx;
    r4.xyz = saturate(r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r5.xzw = _ES_LevelHighLightColor.xyz * _ES_LevelHighLightColor.www;
    r5.xzw = r5.xzw + r5.xzw;
    r4.xyz = r5.xzw * r4.xyz;
    r5.xzw = -r2.xyz * r1.xyz + _ES_LevelMid.xxx;
    r1.xyz = r2.xyz * r1.xyz;
    r2.xyz = r5.xzw / r5.yyy;
    r2.xyz = saturate(-r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r5.xyz = _ES_LevelShadowColor.xyz * _ES_LevelShadowColor.www;
    r5.xyz = r5.xyz + r5.xyz;
    r2.xyz = r5.xyz * r2.xyz;
    r0.y = dot(r1.xyz, float3(1,1,1));
    r0.y = (2.9000001 < r0.y);
    r2.xyz = r0.yyy ? r4.xyz : r2.xyz;
    r0.y = (0.5 < _ES_LEVEL_ADJUST_ON.x);
    r1.xyz = r0.yyy ? r2.xyz : r1.xyz;
    r2.xyz = r1.xyz * r0.www;
    r0.y = (0.5 < _ShadowBoost.x);
    r1.xyz = r0.yyy ? r2.xyz : r1.xyz;
    r2.xyz = _MainTex.Sample(s0_s, v1.xy).xyz;
    r4.xyz = v7.xxx ? _Color.xyz : _BackColor.xyz;
    r2.xyz = r4.xyz * r2.xyz;
    r4.xyz = -r1.xyz * r2.xyz + float3(1,1,1);
    r4.xyz = r4.xyz + r4.xyz;
    r5.xyzw = float4(1,1,1,1) + -_CharacterLocalMainLightColor1.wxyz;
    r4.xyz = -r4.xyz * r5.yzw + float3(1,1,1);
    r5.yzw = r2.xyz * r1.xyz;
    r6.xyz = r5.yzw + r5.yzw;
    r6.xyz = _CharacterLocalMainLightColor1.xyz * r6.xyz;
    r7.xyz = (r5.yzw < float3(0.5,0.5,0.5));
    r4.xyz = r7.xyz ? r6.xyz : r4.xyz;
    r1.xyz = -r1.xyz * r2.xyz + r4.xyz;
    r4.xyz = -_NewLocalLightCharCenter.xyz + v4.xyz;
    r0.y = dot(r4.xyz, r4.xyz);
    r0.y = rsqrt(r0.y);
    r4.xyz = r4.xyz * r0.yyy;
    r0.y = dot(r4.xyz, _NewLocalLightDir.xyz);
    r0.y = r0.y * 0.5 + 0.5;
    r0.w = dot(r3.xyz, _NewLocalLightDir.xyz);
    r0.w = 0.5 + r0.w;
    r0.w = saturate(0.666666687 * r0.w);
    r1.w = r0.w * -2 + 3;
    r0.w = r0.w * r0.w;
    r0.w = r1.w * r0.w;
    r0.w = r5.x * r0.w;
    r0.y = _CharacterLocalMainLightColor1.w * r0.y + r0.w;
    r0.y = r0.y * r0.z;
    r0.yz = _NewLocalLightStrength.xy * r0.yy;
    r0.y = r0.y * r0.x;
    r4.xyz = _CharacterLocalMainLightColor2.xyz * r0.zzz;
    r0.yzw = r0.yyy * r1.xyz + r5.yzw;
    r0.xyz = r4.xyz * r0.xxx + r0.yzw;
    r1.xyz = MATRIX_T_V[1].xyz * r3.yyy;
    r1.xyz = MATRIX_T_V[0].xyz * r3.xxx + r1.xyz;
    r1.xyz = MATRIX_T_V[2].xyz * r3.zzz + r1.xyz;
    r0.w = dot(v6.xyz, v6.xyz);
    r0.w = rsqrt(r0.w);
    r3.xyz = v6.xyz * r0.www;
    r4.xyz = MATRIX_T_V[1].xyz * r3.yyy;
    r3.xyw = MATRIX_T_V[0].xyz * r3.xxx + r4.xyz;
    r3.xyz = MATRIX_T_V[2].xyz * r3.zzz + r3.xyw;
    r3.xyz = -_RimShadowOffset.xyz + r3.xyz;
    r0.w = dot(r3.xyz, r3.xyz);
    r0.w = rsqrt(r0.w);
    r3.xyz = r3.xyz * r0.www;
    r0.w = saturate(dot(r1.xyz, r3.xyz));
    r0.w = 1 + -r0.w;
    r0.w = max(0.00100000005, r0.w);
    r0.w = log2(r0.w);
    r0.w = _RimShadowCt.x * r0.w;
    r0.w = exp2(r0.w);
    r0.w = saturate(_RimShadowWidth0.x * r0.w);
    r0.w = -_RimShadowFeather0.x + r0.w;
    r1.x = 1 + -_RimShadowFeather0.x;
    r1.x = 1 / r1.x;
    r0.w = saturate(r1.x * r0.w);
    r1.x = r0.w * -2 + 3;
    r0.w = r0.w * r0.w;
    r0.w = r1.x * r0.w;
    r0.w = _RimShadowIntensity.x * r0.w;
    r0.w = _ES_RimShadowIntensity.x * r0.w;
    r0.w = 0.25 * r0.w;
    r1.xyz = _ES_RimShadowColor.xyz * _ES_RimShadowColor.www;
    r1.xyz = _RimShadowColor0.xyz * r1.xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.xyz = r0.www * r1.xyz + float3(1,1,1);
    o0.xyz = r1.xyz * r0.xyz;
    o0.w = r2.x;
    r0.x = dot(float3(1,1,1), abs(v5.xyz));
    r0.x = max(9.99999975e-005, r0.x);
    r0.xy = v5.xy / r0.xx;
    r0.zw = (r0.xy >= float2(0,0));
    r0.zw = r0.zw ? float2(1,1) : float2(-1,-1);
    r1.xy = float2(1,1) + -abs(r0.yx);
    r0.zw = r1.xy * r0.zw;
    r1.x = (0 >= v5.z);
    r0.xy = r1.xx ? r0.zw : r0.xy;
    o1.xy = r0.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r0.x = r2.z * 127 + 128;
    o1.w = r2.y;
    r0.x = trunc(r0.x);
    o1.z = 1.52590219e-005 * r0.x;
    o2.xy = float2(0,0);
    return;
}
