#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Core.hlsl"
#include "Packages/com.unity.render-pipelines.universal/ShaderLibrary/Lighting.hlsl"

#define _EnableCustomCameraOverride float(0)
#define _HideCharaParts int(1)
#define _ShowPartID int(47)
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
#define _UsingDitherAlpha float(0)
#define _DitherAlpha float(1)
#define _ES_EffCustomLightPosition float4(0, 0, 0, 0)

#define _MainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _CharacterSelfShadowMatrix float4x4(0.5006276, -0.11990132, 0.24304941, 0, -1.3113115E-08, 0.6679983, 0.10119428, 0, 0.43580663, 0.13773517, -0.27920002, 0, -271.69684, -145.73615, 51.42602, 1)
#define _CharacterLocalMainLightPosition float4(-0.4500001, 0.43588996, 0.7794228, 0)
#define _CharacterLocalMainLightColor1 float4(0, 0, 0, 0)
#define _CharacterLocalMainLightColor2 float4(0, 0, 0, 0)
#define _CharacterLocalMainLightDark float4(0, 0, 0, 0)
#define _CharacterLocalMainLightDark1 float4(0, 0, 0, 0)
#define _NewLocalLightDir float4(0, 0, 0, 0)
#define _NewLocalLightCharCenter float4(0, 0, 0, 0)
#define _NewLocalLightStrength float4(0, 0, 0, 0)
#define _DisableCharacterLocalLight float(0)
#define _UseSelfShadow float(1)
#define _CharacterSelfShadowMapScaleAndOffset float4(0.5, 0.5, 0, 0)
#define _MainLightWorldToShadowArr float4x4(0.10422597, -0.038679726, -0.0007523565, 0, -1.0353922E-08, -0.09219322, 0.0012626058, 0, 0.060174905, 0.06699522, 0.0013031194, 0, -43.7041, -3.9868202, -0.5940366, 1)
#define _CascadeShadowSplitSpheres0 float4(188.5324, 168.75716, 408.05258, 4.134364)
#define _CascadeShadowSplitSpheres1 float4(177.9075, 166.43645, 420.43933, 13.613332)
#define _CascadeShadowSplitSpheres2 float4(138.06415, 157.73378, 466.88986, 54.392616)
#define _CascadeShadowSplitSpheres3 float4(49.080673, 138.29784, 570.6293, 112.45557)
#define _CascadeShadowSplitSphereRadii float4(17.092966, 185.3228, 2958.5566, 12646.255)
#define _MainLightShadowParams float4(1, 1, 0, 0)
#define _MainLightShadowmapSize float4(0.00048828125, 0.00048828125, 2048, 2048)
#define _ObjectSelfShadowmapSize float4(0.00032552084, 0.00032552084, 3072, 3072)
#define _CharaWorldSpaceOffset float3(188.484, 168.043, 408.061)
#define _IsMonster float(0)
#define _EnableAlphaCutoff float(1)
#define _AlphaTestThreshold float(0.5)
#define _SelfShadowSampleOffset float(0.001)
#define _SelfShadowDarken float(0.6)
#define _Color float4(1, 1, 1, 1)
#define _ShadowRamp float(1)
#define _ShadowBoost float(0)
#define _ShadowBoostVal float(0)
#define _RimShadowWidth0 float(0)
#define _RimShadowColor0 float3(0.29066417, 0.28173506, 0.28173506)
#define _RimShadowFeather0 float(0.01)
#define _RimShadowColor1 float4(0.32296914, 0.32296914, 0.32296914, 1)
#define _RimShadowWidth1 float(0)
#define _RimShadowFeather1 float(0.01)
#define _RimShadowColor2 float4(0, 0, 0, 1)
#define _RimShadowWidth2 float(0)
#define _RimShadowFeather2 float(0.01)
#define _RimShadowColor3 float4(0.5754442, 0.20656015, 0.09665102, 1)
#define _RimShadowWidth3 float(2.05)
#define _RimShadowFeather3 float(0.944)
#define _RimShadowColor4 float4(0.32314324, 0.15592639, 0.09305891, 1)
#define _RimShadowWidth4 float(2.74)
#define _RimShadowFeather4 float(0.721)
#define _RimShadowColor5 float4(0.32296914, 0.32296914, 0.32296914, 1)
#define _RimShadowWidth5 float(0)
#define _RimShadowFeather5 float(0.07)
#define _RimShadowColor6 float4(0.41320828, 0.31911558, 0.27495003, 1)
#define _RimShadowWidth6 float(1.88)
#define _RimShadowFeather6 float(0.403)
#define _RimShadowColor7 float4(0.3691636, 0.088781655, 0.01304926, 1)
#define _RimShadowWidth7 float(6.24)
#define _RimShadowFeather7 float(0.724)
#define _RimShadowCt float(1.5)
#define _RimShadowIntensity float(2)
#define _RimShadowOffset float4(0, -0.8, -2.5, 0)
#define _UseOverHeated float(0)
#define _HeatInst float(0)
#define _HeatedHeight float(0)
#define _HeatedThreshould float(0)
#define _HeatColor0 float4(1, 1, 1, 1)
#define _HeatColor1 float4(1, 1, 1, 1)
#define _HeatColor2 float4(1, 1, 1, 1)
#define _DissoveON float(0)
#define _DissolveRate float(0)
#define _DissolveDistortionIntensity float(0.01)
#define _DissoveDirecMask float(2)
#define _DissolveMapAdd float(0)
#define _DissolveUVSpeed float4(0, 0, 0, 0)
#define _DissolveComponent float4(1, 0, 0, 0)
#define _DissolveMaskUVSet float(0)
#define _DissolveUseDirection float(0)
#define _DissolveCenter float4(0, 0, 0, 0)
#define _DissolveDiretcionXYZ float4(0, 0, 0, 0)
#define _UsingDitherAlpha float(0)
#define _UseMaterialValuesLUT float(1E-45)
#define _BackColor float4(1, 0.91502047, 0.866134, 1)
#define _UseMoonHalo float(0)
#define _MoonHaloRange float(0)
#define _MoonDir float4(0, 0, 0, 0)
#define _MoonAnim float4(0, 0, 0, 0)
#define _MoonUVType float(0)
#define _ES_MonsterLightDir float3(0.27059788, 0.7071069, 0.65328157)
#define _CustomMainLightDir float4(0, 0, 0, 0)
#define _ES_Indoor float(0)
#define _ES_LEVEL_ADJUST_ON float(1)
#define _ES_CharacterToonRampMode float(0)
#define _ES_CharacterDisableLocalMainLight float(0)
#define _ES_RimShadowColor float4(1, 1, 1, 0.5019608)
#define _ES_RimShadowIntensity float(1)
#define _ES_CharacterShadowFactor float(0)
#define _ES_LevelSkinLightColor float4(1, 1, 1, 0.5)
#define _ES_LevelSkinShadowColor float4(1, 1, 1, 0.5)
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
TEXTURE2D(_DissolveMap);
TEXTURE2D(_DissolveMask);
TEXTURE2D(_MaterialValuesPackLUT);
TEXTURE2D(_MainLightShadowmapTexture);
TEXTURE2D(_CharacterSelfShadowMap);

#define s0_s sampler_LinearRepeat
#define s1_s sampler_LinearRepeat
#define s2_s sampler_LinearClamp
#define s3_s sampler_LinearClamp
#define s4_s sampler_LinearRepeat
#define s5_s sampler_LinearRepeat
#define s6_s sampler_LinearClampCompare
#define s7_s sampler_LinearClampCompare

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
    out float3 o2 : TEXCOORD16,
    out float4 o3 : COLOR0,
    out float4 o4 : TEXCOORD1,
    out float4 o5 : TEXCOORD2,
    out float4 o6 : TEXCOORD3,
    out float4 o7 : TEXCOORD4,
    out float4 o8 : TEXCOORD9,
    out float4 o9 : TEXCOORD17)
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
    r0.y = (0.5 < _EnableCustomCameraOverride.x);
    r2.xyz = MATRIX_T_M[1].xyz * v0.yyy;
    r2.xyz = MATRIX_T_M[0].xyz * v0.xxx + r2.xyz;
    r2.xyz = MATRIX_T_M[2].xyz * v0.zzz + r2.xyz;
    r2.xyz = MATRIX_T_M[3].xyz + r2.xyz;
    r3.xyzw = MATRIX_T_VP[1].xyzw * r2.yyyy;
    r3.xyzw = MATRIX_T_VP[0].xyzw * r2.xxxx + r3.xyzw;
    r3.xyzw = MATRIX_T_VP[2].xyzw * r2.zzzz + r3.xyzw;
    r3.xyzw = MATRIX_T_VP[3].xyzw + r3.xyzw;
    r1.xyzw = r0.yyyy ? r3.xyzw : r1.xyzw;
    r3.xyzw = _NonJitteredViewProjMatrix[1].xyzw * r2.yyyy;
    r3.xyzw = _NonJitteredViewProjMatrix[0].xyzw * r2.xxxx + r3.xyzw;
    r3.xyzw = _NonJitteredViewProjMatrix[2].xyzw * r2.zzzz + r3.xyzw;
    r3.xyzw = _NonJitteredViewProjMatrix[3].xyzw + r3.xyzw;
    r0.y = (0 < asint(_UsingDitherAlpha.x));
    r3.xyzw = r0.yyyy ? r3.xyzw : r1.xyzw;
    o4.z = r0.y ? _DitherAlpha.x : r1.z;
    o0.xyzw = r0.xxxx ? r3.xyzw : float4(-99,-99,-99,1);
    o1.xy = v3.xy * _MainTex_ST.xy + _MainTex_ST.zw;
    o1.zw = v4.xy;
    o2.xyz = float3(0,0,0);
    o3.xyzw = v5.xyzw;
    r0.x = _ProjectionParams.x * r3.y;
    r0.w = 0.5 * r0.x;
    r0.xz = float2(0.5,0.5) * r3.xw;
    o4.w = r3.w;
    o4.xy = r0.xw + r0.zz;
    o5.xyz = r2.xyz;
    o6.x = dot(v1.xyz, MATRIX_IT_M[0].xyz);
    o6.y = dot(v1.xyz, MATRIX_IT_M[1].xyz);
    o6.z = dot(v1.xyz, MATRIX_IT_M[2].xyz);
    o7.xyz = _WorldSpaceCameraPos.xyz + -r2.xyz;
    r0.xyz = -_DissolvePosMaskPos.xyz + r2.xyz;
    r0.xyz = -v0.xyz + r0.xyz;
    r0.xyz = _DissolvePosMaskWorldON.xxx * r0.xyz + v0.xyz;
    o7.w = 1;
    r1.xy = v6.xy + -v3.xy;
    r1.xy = _DissolveUV.xx * r1.xy + v3.xy;
    o8.xy = r1.xy * _DissolveST.xy + _DissolveST.zw;
    o8.zw = r1.xy * _DistortionST.xy + _DistortionST.zw;
    r2.xyz = _ES_EffCustomLightPosition.xyz + -r0.xyz;
    r0.xyz = _DissolvePosMaskGlobalOn.xxx * r2.xyz + r0.xyz;
    r0.xyz = -_DissolvePosMaskRootOffset.xyz + r0.xyz;
    r2.xyz = _ES_EffCustomLightPosition.xyz + -MATRIX_T_M[3].xyz;
    r3.xyz = _DissolvePosMaskWorldON.xxx * -MATRIX_T_M[3].xyz + _DissolvePosMaskPos.xyz;
    r2.xyz = -r3.xyz + r2.xyz;
    r2.xyz = _DissolvePosMaskGlobalOn.xxx * r2.xyz + r3.xyz;
    r0.w = dot(r2.xyz, r2.xyz);
    r0.w = rsqrt(r0.w);
    r3.xyz = r2.xyz * r0.www;
    r0.w = dot(abs(r2.xyz), float3(1,1,1));
    r0.w = (r0.w >= 0.00100000005);
    r0.x = dot(r3.xyz, r0.xyz);
    r0.y = max(0.00999999978, _DissolvePosMaskPos.w);
    r0.x = abs(r0.x) + r0.y;
    r0.y = r0.y + r0.y;
    r0.x = r0.x / r0.y;
    r0.y = 1 + -r0.x;
    r0.y = r0.y + -r0.x;
    r0.x = _DissolvePosMaskFilpOn.x * r0.y + r0.x;
    r0.y = 1 + -_DissolvePosMaskOn.x;
    r0.x = saturate(r0.y + r0.x);
    r1.z = r0.w ? r0.x : 1;
    r1.w = 0;
    o9.xyzw = r1.xzww;
    return;
}

void Fragment(
    float4 v0 : SV_POSITION0,
    float4 v1 : TEXCOORD0,
    float3 v2 : TEXCOORD16,
    float4 v3 : COLOR0,
    float4 v4 : TEXCOORD1,
    float4 v5 : TEXCOORD2,
    float4 v6 : TEXCOORD3,
    float4 v7 : TEXCOORD4,
    float4 v8 : TEXCOORD9,
    float4 v9 : TEXCOORD17,
    uint v10 : SV_IsFrontFace0,
    out float4 o0 : SV_Target0,
    out float4 o1 : SV_Target1,
    out float2 o2 : SV_Target2)
  {
    const float4 icb[] = { { 1.000000, 0, 0, 0},
                                { 0, 1.000000, 0, 0},
                                { 0, 0, 1.000000, 0},
                                { 0, 0, 0, 1.000000} };
    float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18,r19,r20,r21,r22,r23;
    uint4 bitmask, uiDest;
    float4 fDest;

    float4x4 MATRIX_T_V = transpose(UNITY_MATRIX_V);
  
    r0.x = (0 < _DissoveON.x);
    if (r0.x != 0) {
      r0.x = (0.5 < _DissolveUseDirection.x);
      if (r0.x != 0) {
        r0.xyz = float3(1.99999999e-006,1.99999999e-006,1.99999999e-006) + v5.xyz;
        r0.xyz = -_DissolveCenter.xyz + r0.xyz;
        r0.x = dot(r0.xyz, _DissolveDiretcionXYZ.xyz);
        r0.x = (0 < r0.x);
        if (r0.x == 0) discard;
        r0.x = 1.99999999e-006;
      } else {
        r0.yz = float2(3.00000011e-006,3.00000011e-006) + v8.zw;
        r0.w = _DissoveDirecMask.x + -v9.x;
        r0.w = min(1, abs(r0.w));
        r0.yz = _DissolveUVSpeed.zw * _Time.yy + r0.yz;
        r0.yz = _DissolveMap.Sample(s4_s, r0.yz).xy;
        r0.yz = float2(-0.5,-0.5) + r0.yz;
        r0.yz = -r0.yz * _DissolveDistortionIntensity.xx + v8.xy;
        r0.yz = _DissolveUVSpeed.xy * _Time.yy + r0.yz;
        r0.y = _DissolveMap.Sample(s4_s, r0.yz).z;
        r1.xy = v8.xy + -v1.xy;
        r1.xy = _DissolveMaskUVSet.xx * r1.xy + v1.xy;
        r1.xyzw = _DissolveMask.Sample(s5_s, r1.xy).xyzw;
        r0.z = dot(r1.xyzw, _DissolveComponent.xyzw);
        r0.y = _DissolveMapAdd.x + r0.y;
        r0.y = r0.y * r0.w;
        r0.y = r0.y * r0.z;
        r0.y = v9.y * r0.y;
        r0.y = r0.y * 1.00999999 + -0.00999999978;
        r0.y = -_DissolveRate.x + r0.y;
        r0.y = (r0.y < 0);
        if (r0.y != 0) discard;
        r0.x = 3.00000011e-006;
      }
    } else {
      r0.x = 0;
    }
    r0.y = asint(_UsingDitherAlpha.x);
    r0.x = (r0.x < r0.y);
    if (r0.x != 0) {
      r0.x = (v4.z < 0.949999988);
      if (r0.x != 0) {
        r0.xy = v4.yx / v4.ww;
        r0.xy = _ScaledScreenParams.yx * r0.xy;
        r0.xy = (uint2)r0.xy;
        r0.xy = (int2)r0.xy & int2(3,3);
        r1.x = dot(float4(1,13,4,16), icb[r0.y+0].xyzw);
        r1.y = dot(float4(9,5,12,8), icb[r0.y+0].xyzw);
        r1.z = dot(float4(3,15,2,14), icb[r0.y+0].xyzw);
        r1.w = dot(float4(11,7,10,6), icb[r0.y+0].xyzw);
        r0.x = dot(r1.xyzw, icb[r0.x+0].xyzw);
        r0.x = v4.z * 17 + -r0.x;
        r0.x = -0.00999999978 + r0.x;
        r0.x = (r0.x < 0);
        if (r0.x != 0) discard;
      }
    }
    r0.xyzw = _MainTex.Sample(s0_s, v1.xy).xyzw;
    r0.xyz = _Color.xyz * r0.xyz;
    r1.xyzw = _MainTex.Sample(s0_s, v1.zw).xyzw;
    r1.xyzw = _BackColor.xyzw * r1.xyzw;
    r0.xyzw = v10.xxxx ? r0.xyzw : r1.xyzw;
    if (v10.x == 0) {
      r1.xy = _LightMap.Sample(s1_s, v1.zw).yw;
    } else {
      r1.xy = _LightMap.Sample(s1_s, v1.xy).yw;
    }
    r1.y = 8 * r1.y;
    r1.y = floor(r1.y);
    r1.z = 8 * r1.y;
    r1.z = (r1.z >= -r1.z);
    r1.zw = r1.zz ? float2(8,0.125) : float2(-8,-0.125);
    r1.y = r1.y * r1.w;
    r1.y = frac(r1.y);
    r1.y = r1.z * r1.y;
    r2.xyz = -_CascadeShadowSplitSpheres0.xyz + v5.xyz;
    r3.xyz = -_CascadeShadowSplitSpheres1.xyz + v5.xyz;
    r4.xyz = -_CascadeShadowSplitSpheres2.xyz + v5.xyz;
    r5.xyz = -_CascadeShadowSplitSpheres3.xyz + v5.xyz;
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
    r1.z = dot(r3.xyzw, float4(4,3,2,1));
    r2.z = 4 + -r1.z;
    r1.z = (uint)r2.z;
    r1.z = (uint)r1.z << 2;
    r3.xyz = _MainLightWorldToShadowArr[1].xyz * v5.yyy;
    r3.xyz = _MainLightWorldToShadowArr[0].xyz * v5.xxx + r3.xyz;
    r3.xyz = _MainLightWorldToShadowArr[2].xyz * v5.zzz + r3.xyz;
    r3.xyz = _MainLightWorldToShadowArr[3].xyz + r3.xyz;
    r1.zw = r3.xy * _MainLightShadowmapSize.zw + float2(0.5,0.5);
    r1.zw = floor(r1.zw);
    r4.xy = r3.xy * _MainLightShadowmapSize.zw + -r1.zw;
    r5.xyzw = float4(0.5,1,0.5,1) + r4.xxyy;
    r6.xyzw = r5.xxzz * r5.xxzz;
    r7.yw = float2(0.0408160016,0.0408160016) * r6.yw;
    r4.zw = r6.xz * float2(0.5,0.5) + -r4.xy;
    r5.xz = float2(1,1) + -r4.xy;
    r6.xy = min(float2(0,0), r4.xy);
    r5.xz = -r6.xy * r6.xy + r5.xz;
    r6.xy = max(float2(0,0), r4.xy);
    r5.yw = -r6.xy * r6.xy + r5.yw;
    r5.xyzw = float4(2,2,2,2) + r5.xyzw;
    r6.z = 0.0816320032 * r5.y;
    r8.xy = float2(0.0816320032,0.0816320032) * r4.wz;
    r4.zw = float2(0.0816320032,0.0816320032) * r5.xz;
    r8.z = 0.0816320032 * r5.w;
    r6.x = r8.y;
    r6.yw = r4.xx * float2(-0.0816320032,0.0816320032) + float2(0.163264006,0.0816320032);
    r5.xz = r4.xx * float2(-0.0816320032,0.0816320032) + float2(0.0816320032,0.163264006);
    r5.y = r4.z;
    r5.w = r7.y;
    r6.xyzw = r6.xyzw + r5.xyzw;
    r8.yw = r4.yy * float2(-0.0816320032,0.0816320032) + float2(0.163264006,0.0816320032);
    r7.xz = r4.yy * float2(-0.0816320032,0.0816320032) + float2(0.0816320032,0.163264006);
    r7.y = r4.w;
    r4.xyzw = r8.xyzw + r7.xyzw;
    r5.xyzw = r5.xyzw / r6.xyzw;
    r5.xyzw = float4(-3.5,-1.5,0.5,2.5) + r5.xyzw;
    r7.xyzw = r7.xyzw / r4.xyzw;
    r7.xyzw = float4(-3.5,-1.5,0.5,2.5) + r7.xyzw;
    r5.xyzw = _MainLightShadowmapSize.xxxx * r5.wxyz;
    r7.xyzw = _MainLightShadowmapSize.yyyy * r7.xwyz;
    r8.xzw = r5.yzw;
    r8.y = r7.x;
    r2.xy = r1.zw * _MainLightShadowmapSize.xy + r8.xy;
    r9.xy = r1.zw * _MainLightShadowmapSize.xy + r8.zy;
    r10.xy = r1.zw * _MainLightShadowmapSize.xy + r8.wy;
    r5.y = r8.y;
    r11.xy = r1.zw * _MainLightShadowmapSize.xy + r5.xy;
    r8.y = r7.z;
    r12.xy = r1.zw * _MainLightShadowmapSize.xy + r8.xy;
    r13.xy = r1.zw * _MainLightShadowmapSize.xy + r8.zy;
    r14.xy = r1.zw * _MainLightShadowmapSize.xy + r8.wy;
    r5.z = r8.y;
    r15.xy = r1.zw * _MainLightShadowmapSize.xy + r5.xz;
    r8.y = r7.w;
    r16.xy = r1.zw * _MainLightShadowmapSize.xy + r8.xy;
    r17.xy = r1.zw * _MainLightShadowmapSize.xy + r8.zy;
    r18.xy = r1.zw * _MainLightShadowmapSize.xy + r8.wy;
    r5.w = r8.y;
    r19.xy = r1.zw * _MainLightShadowmapSize.xy + r5.xw;
    r7.xzw = r8.xzw;
    r8.xy = r1.zw * _MainLightShadowmapSize.xy + r7.xy;
    r20.xy = r1.zw * _MainLightShadowmapSize.xy + r7.zy;
    r21.xy = r1.zw * _MainLightShadowmapSize.xy + r7.wy;
    r7.x = r5.x;
    r5.xy = r1.zw * _MainLightShadowmapSize.xy + r7.xy;
    r7.xyzw = r6.xyzw * r4.xxxx;
    r22.xyzw = r6.xyzw * r4.yyyy;
    r23.xyzw = r6.xyzw * r4.zzzz;
    r4.xyzw = r6.xyzw * r4.wwww;
    r1.z = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r2.xyz, r3.z).x;
    r9.z = r2.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r9.xyz, r3.z).x;
    r1.w = r7.y * r1.w;
    r1.z = r7.x * r1.z + r1.w;
    r10.z = r9.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r10.xyz, r3.z).x;
    r1.z = r7.z * r1.w + r1.z;
    r11.z = r10.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r11.xyz, r3.z).x;
    r1.z = r7.w * r1.w + r1.z;
    r12.z = r11.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r12.xyz, r3.z).x;
    r1.z = r22.x * r1.w + r1.z;
    r13.z = r12.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r13.xyz, r3.z).x;
    r1.z = r22.y * r1.w + r1.z;
    r14.z = r13.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r14.xyz, r3.z).x;
    r1.z = r22.z * r1.w + r1.z;
    r15.z = r14.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r15.xyz, r3.z).x;
    r1.z = r22.w * r1.w + r1.z;
    r16.z = r15.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r16.xyz, r3.z).x;
    r1.z = r23.x * r1.w + r1.z;
    r17.z = r16.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r17.xyz, r3.z).x;
    r1.z = r23.y * r1.w + r1.z;
    r18.z = r17.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r18.xyz, r3.z).x;
    r1.z = r23.z * r1.w + r1.z;
    r19.z = r18.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r19.xyz, r3.z).x;
    r1.z = r23.w * r1.w + r1.z;
    r8.z = r19.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r8.xyz, r3.z).x;
    r1.z = r4.x * r1.w + r1.z;
    r20.z = r8.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r20.xyz, r3.z).x;
    r1.z = r4.y * r1.w + r1.z;
    r21.z = r20.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r21.xyz, r3.z).x;
    r1.z = r4.z * r1.w + r1.z;
    r5.z = r21.z;
    r1.w = _MainLightShadowmapTexture.SampleCmpLevelZero(s6_s, r5.xyz, r3.z).x;
    r1.z = r4.w * r1.w + r1.z;
    r1.w = 1 + -_MainLightShadowParams.x;
    r1.z = r1.z * _MainLightShadowParams.x + r1.w;
    r1.w = (0 >= r3.z);
    r2.x = (r3.z >= 1);
    r1.w = (int)r1.w | (int)r2.x;
    r2.xy = float2(4,4) * _MainLightShadowmapSize.xy;
    r2.xy = (r2.xy >= r3.xy);
    r2.x = (int)r2.y | (int)r2.x;
    r2.yz = -_MainLightShadowmapSize.xy * float2(4,4) + float2(1,1);
    r2.yz = (r3.xy >= r2.yz);
    r2.y = (int)r2.z | (int)r2.y;
    r2.x = (int)r2.y | (int)r2.x;
    r1.w = (int)r1.w | (int)r2.x;
    r1.z = r1.w ? 1 : r1.z;
    r1.w = _ES_IndoorCharShadowAsCookie.x * _ES_Indoor.x;
    r2.x = -1 + r1.z;
    r2.x = r1.w * r2.x + 1;
    r2.y = 1 + -r1.z;
    r1.z = r1.w * r2.y + r1.z;
    r1.z = 1 + -r1.z;
    r1.z = saturate(-r1.z * 1.25 + 1);
    r1.w = 1 + -r1.z;
    r1.z = _ES_CharacterShadowFactor.x * r1.w + r1.z;
    r1.w = 1 + _ES_CharacterDisableLocalMainLight.x;
    r1.w = -abs(_DisableCharacterLocalLight.x) + r1.w;
    r1.w = (0.5 < r1.w);
    r2.yzw = r1.www ? _MainLightPosition.xyz : _CharacterLocalMainLightPosition.xyz;
    r1.w = (0.5 < _IsMonster.x);
    r2.yzw = r1.www ? _ES_MonsterLightDir.xyz : r2.yzw;
    r3.xyz = _CustomMainLightDir.xyz + -r2.yzw;
    r2.yzw = _CustomMainLightDir.www * r3.xyz + r2.yzw;
    r2.yzw = r1.www ? _ES_MonsterLightDir.xyz : r2.yzw;
    r1.w = dot(v7.xyz, v7.xyz);
    r1.w = rsqrt(r1.w);
    r3.xyz = v7.xyz * r1.www;
    r1.w = dot(v6.xyz, v6.xyz);
    r1.w = rsqrt(r1.w);
    r4.xyz = v6.xyz * r1.www;
    r1.w = v10.x ? 1 : -1;
    r4.xyz = r4.xyz * r1.www;
    r5.xyz = MATRIX_T_V[1].xyz * r4.yyy;
    r5.xyz = MATRIX_T_V[0].xyz * r4.xxx + r5.xyz;
    r5.xyz = MATRIX_T_V[2].xyz * r4.zzz + r5.xyz;
    r6.xyz = MATRIX_T_V[1].xyz * r3.yyy;
    r3.xyw = MATRIX_T_V[0].xyz * r3.xxx + r6.xyz;
    r3.xyz = MATRIX_T_V[2].xyz * r3.zzz + r3.xyw;
    r1.w = dot(r4.xyz, r2.yzw);
    r2.yzw = -_RimShadowOffset.xyz + r3.xyz;
    r3.x = dot(r2.yzw, r2.yzw);
    r3.x = rsqrt(r3.x);
    r2.yzw = r3.xxx * r2.yzw;
    r2.y = saturate(dot(r5.xyz, r2.yzw));
    r2.z = (0 < _UseSelfShadow.x);
    if (r2.z != 0) {
      r3.xyz = _SelfShadowSampleOffset.xxx * r4.xyz + v5.xyz;
      r5.xyzw = _CharacterSelfShadowMatrix[1].xyzw * r3.yyyy;
      r5.xyzw = _CharacterSelfShadowMatrix[0].xyzw * r3.xxxx + r5.xyzw;
      r3.xyzw = _CharacterSelfShadowMatrix[2].xyzw * r3.zzzz + r5.xyzw;
      r3.xyzw = _CharacterSelfShadowMatrix[3].xyzw + r3.xyzw;
      r3.xyz = r3.xyz / r3.www;
      r2.zw = saturate(r3.xy);
      r2.zw = r3.xy + -r2.zw;
      r2.z = dot(r2.zw, r2.zw);
      r2.z = (r2.z == 0.000000);
      r2.w = ~(int)r2.z;
      if (r2.z != 0) {
        r3.xy = r3.xy * _CharacterSelfShadowMapScaleAndOffset.xy + _CharacterSelfShadowMapScaleAndOffset.zw;
        r5.xy = r3.xy * _ObjectSelfShadowmapSize.zw + float2(0.5,0.5);
        r5.xy = floor(r5.xy);
        r3.xy = r3.xy * _ObjectSelfShadowmapSize.zw + -r5.xy;
        r6.xyzw = float4(0.5,1,0.5,1) + r3.xxyy;
        r7.xyzw = r6.xxzz * r6.xxzz;
        r8.yw = float2(0.0408160016,0.0408160016) * r7.yw;
        r5.zw = r7.xz * float2(0.5,0.5) + -r3.xy;
        r6.xz = float2(1,1) + -r3.xy;
        r7.xy = min(float2(0,0), r3.xy);
        r6.xz = -r7.xy * r7.xy + r6.xz;
        r7.xy = max(float2(0,0), r3.xy);
        r6.yw = -r7.xy * r7.xy + r6.yw;
        r6.xyzw = float4(2,2,2,2) + r6.xyzw;
        r7.z = 0.0816320032 * r6.y;
        r9.xy = float2(0.0816320032,0.0816320032) * r5.wz;
        r5.zw = float2(0.0816320032,0.0816320032) * r6.xz;
        r9.z = 0.0816320032 * r6.w;
        r7.x = r9.y;
        r7.yw = r3.xx * float2(-0.0816320032,0.0816320032) + float2(0.163264006,0.0816320032);
        r6.xz = r3.xx * float2(-0.0816320032,0.0816320032) + float2(0.0816320032,0.163264006);
        r6.y = r5.z;
        r6.w = r8.y;
        r7.xyzw = r7.xyzw + r6.xyzw;
        r9.yw = r3.yy * float2(-0.0816320032,0.0816320032) + float2(0.163264006,0.0816320032);
        r8.xz = r3.yy * float2(-0.0816320032,0.0816320032) + float2(0.0816320032,0.163264006);
        r8.y = r5.w;
        r9.xyzw = r9.xyzw + r8.xyzw;
        r6.xyzw = r6.xyzw / r7.xyzw;
        r6.xyzw = float4(-3.5,-1.5,0.5,2.5) + r6.xyzw;
        r8.xyzw = r8.xyzw / r9.xyzw;
        r8.xyzw = float4(-3.5,-1.5,0.5,2.5) + r8.xyzw;
        r6.xyzw = _ObjectSelfShadowmapSize.xxxx * r6.wxyz;
        r8.xyzw = _ObjectSelfShadowmapSize.yyyy * r8.xwyz;
        r10.xzw = r6.yzw;
        r10.y = r8.x;
        r11.xyzw = r5.xyxy * _ObjectSelfShadowmapSize.xyxy + r10.xyzy;
        r3.xy = r5.xy * _ObjectSelfShadowmapSize.xy + r10.wy;
        r6.y = r10.y;
        r10.y = r8.z;
        r12.xyzw = r5.xyxy * _ObjectSelfShadowmapSize.xyxy + r10.xyzy;
        r5.zw = r5.xy * _ObjectSelfShadowmapSize.xy + r10.wy;
        r6.z = r10.y;
        r13.xyzw = r5.xyxy * _ObjectSelfShadowmapSize.xyxy + r6.xyxz;
        r10.y = r8.w;
        r14.xyzw = r5.xyxy * _ObjectSelfShadowmapSize.xyxy + r10.xyzy;
        r6.yz = r5.xy * _ObjectSelfShadowmapSize.xy + r10.wy;
        r6.w = r10.y;
        r15.xy = r5.xy * _ObjectSelfShadowmapSize.xy + r6.xw;
        r8.xzw = r10.xzw;
        r10.xyzw = r5.xyxy * _ObjectSelfShadowmapSize.xyxy + r8.xyzy;
        r8.zw = r5.xy * _ObjectSelfShadowmapSize.xy + r8.wy;
        r8.x = r6.x;
        r5.xy = r5.xy * _ObjectSelfShadowmapSize.xy + r8.xy;
        r16.xyzw = r9.xxxx * r7.xyzw;
        r17.xyzw = r9.yyyy * r7.xyzw;
        r18.xyzw = r9.zzzz * r7.xyzw;
        r7.xyzw = r9.wwww * r7.xyzw;
        r2.z = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r11.xy, r3.z).x;
        r3.w = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r11.zw, r3.z).x;
        r3.w = r16.y * r3.w;
        r2.z = r16.x * r2.z + r3.w;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r3.xy, r3.z).x;
        r2.z = r16.z * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r13.xy, r3.z).x;
        r2.z = r16.w * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r12.xy, r3.z).x;
        r2.z = r17.x * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r12.zw, r3.z).x;
        r2.z = r17.y * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r5.zw, r3.z).x;
        r2.z = r17.z * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r13.zw, r3.z).x;
        r2.z = r17.w * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r14.xy, r3.z).x;
        r2.z = r18.x * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r14.zw, r3.z).x;
        r2.z = r18.y * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r6.yz, r3.z).x;
        r2.z = r18.z * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r15.xy, r3.z).x;
        r2.z = r18.w * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r10.xy, r3.z).x;
        r2.z = r7.x * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r10.zw, r3.z).x;
        r2.z = r7.y * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r8.zw, r3.z).x;
        r2.z = r7.z * r3.x + r2.z;
        r3.x = _CharacterSelfShadowMap.SampleCmpLevelZero(s7_s, r5.xy, r3.z).x;
        r2.z = r7.w * r3.x + r2.z;
        r3.x = (0 >= r3.z);
        r3.y = (r3.z >= 1);
        r3.x = (int)r3.y | (int)r3.x;
        r2.z = r3.x ? 1 : r2.z;
      } else {
        r2.z = 1;
      }
      r3.x = 1;
    } else {
      r2.zw = float2(1,0);
    }
    r2.z = r2.w ? r3.x : r2.z;
    r2.w = 1 + -_SelfShadowDarken.x;
    r2.z = r2.z * _SelfShadowDarken.x + r2.w;
    r2.w = r1.x + r1.x;
    r2.w = v3.x * r2.w;
    r2.z = r2.w * r2.z;
    r1.w = saturate(r1.w * 0.5 + 0.5);
    r1.w = dot(r1.ww, r2.zz);
    r2.z = (0.5 < _ES_CharacterDisableLocalMainLight.x);
    r2.w = 1 + -r1.z;
    r2.w = _CharacterLocalMainLightPosition.w * r2.w + r1.z;
    r1.z = r2.z ? r1.z : r2.w;
    r1.w = r1.w * r1.z;
    r1.w = min(r1.w, r2.x);
    r1.x = v3.x * r1.x;
    r2.w = max(0.00100000005, r1.w);
    r2.w = r2.w * 0.850000024 + 0.150000006;
    r3.x = (r1.z < 0.100000001);
    r1.x = min(0.800000012, r1.x);
    r1.x = r3.x ? r1.x : 1;
    r1.w = (_ShadowRamp.x < r1.w);
    r1.w = r1.w ? 0.99000001 : r2.w;
    r3.x = r1.w * r1.x;
    r2.w = r1.y * 2 + 1;
    r3.y = 0.0625 * r2.w;
    r5.xyz = _DiffuseRampMultiTex.Sample(s3_s, r3.xy).xyz;
    r3.xyz = _DiffuseCoolRampMultiTex.Sample(s2_s, r3.xy).xyz;
    r2.w = saturate(_ES_CharacterToonRampMode.x);
    r3.xyz = r3.xyz + -r5.xyz;
    r3.xyz = r2.www * r3.xyz + r5.xyz;
    r1.x = r1.w * r1.x + -0.800000012;
    r1.xz = saturate(float2(10.0000038,6.66666651) * r1.xz);
    r1.w = r1.x * -2 + 3;
    r1.x = r1.x * r1.x;
    r1.x = -r1.w * r1.x + 1;
    r1.x = _NewLocalLightStrength.z * r1.x;
    r1.w = round(r1.y);
    r2.w = (r1.w == 0.000000);
    r5.xyz = float3(-1,-1,-1) + _CharacterLocalMainLightDark1.xyz;
    r5.xyz = r1.xxx * r5.xyz + float3(1,1,1);
    r5.xyz = r5.xyz * r3.xyz;
    r6.xyz = float3(-1,-1,-1) + _CharacterLocalMainLightDark.xyz;
    r6.xyz = r1.xxx * r6.xyz + float3(1,1,1);
    r3.xyz = r6.xyz * r3.xyz;
    r3.xyz = r2.www ? r5.xyz : r3.xyz;
    r1.x = (0.5 < _ES_LEVEL_ADJUST_ON.x);
    r3.w = dot(r3.xyz, float3(1,1,1));
    r3.w = (2.9000001 < r3.w);
    r2.w = r2.w ? 0 : 1;
    r5.xyz = _ES_LevelSkinLightColor.xyz * _ES_LevelSkinLightColor.www;
    r5.xyz = r5.xyz + r5.xyz;
    r6.xyz = _ES_LevelHighLightColor.xyz * _ES_LevelHighLightColor.www;
    r6.xyz = r6.xyz * float3(2,2,2) + -r5.xyz;
    r5.xyz = r2.www * r6.xyz + r5.xyz;
    r6.xyz = _ES_LevelSkinShadowColor.xyz * _ES_LevelSkinShadowColor.www;
    r6.xyz = r6.xyz + r6.xyz;
    r7.xyz = _ES_LevelShadowColor.xyz * _ES_LevelShadowColor.www;
    r7.xyz = r7.xyz * float3(2,2,2) + -r6.xyz;
    r6.xyz = r2.www * r7.xyz + r6.xyz;
    r7.xyz = -_ES_LevelMid.xxx + r3.xyz;
    r8.xy = float2(_ES_LevelHighLight.x, _ES_LevelMid.x) + -float2(_ES_LevelMid.x, _ES_LevelShadow.x);
    r7.xyz = r7.xyz / r8.xxx;
    r7.xyz = saturate(r7.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r5.xyz = r7.xyz * r5.xyz;
    r7.xyz = _ES_LevelMid.xxx + -r3.xyz;
    r7.xyz = r7.xyz / r8.yyy;
    r7.xyz = saturate(-r7.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
    r6.xyz = r7.xyz * r6.xyz;
    r5.xyz = r3.www ? r5.xyz : r6.xyz;
    r3.xyz = r1.xxx ? r5.xyz : r3.xyz;
    r1.x = (0.5 < _ShadowBoost.x);
    r2.w = r1.z * -2 + 3;
    r1.z = r1.z * r1.z;
    r1.z = r2.w * r1.z;
    r2.w = 1 + _ShadowBoostVal.x;
    r3.w = 1 + -r2.w;
    r1.z = r1.z * r3.w + r2.w;
    r5.xyz = r3.xyz * r1.zzz;
    r3.xyz = r1.xxx ? r5.xyz : r3.xyz;
    r5.xyz = r3.xyz * r0.xyz;
    r6.xyz = -_NewLocalLightCharCenter.xyz + v5.xyz;
    r1.x = dot(r6.xyz, r6.xyz);
    r1.x = rsqrt(r1.x);
    r6.xyz = r6.xyz * r1.xxx;
    r1.x = dot(r6.xyz, _NewLocalLightDir.xyz);
    r1.z = dot(r4.xyz, _NewLocalLightDir.xyz);
    r1.z = 0.5 + r1.z;
    r1.z = saturate(0.666666687 * r1.z);
    r2.w = r1.z * -2 + 3;
    r1.z = r1.z * r1.z;
    r1.z = r2.w * r1.z;
    r1.x = r1.x * 0.5 + 0.5;
    r4.xyzw = float4(1,1,1,1) + -_CharacterLocalMainLightColor1.wxyz;
    r1.z = r4.x * r1.z;
    r1.x = _CharacterLocalMainLightColor1.w * r1.x + r1.z;
    r1.z = r2.z ? 0 : 1;
    r1.x = r1.x * r1.z;
    r1.xz = _NewLocalLightStrength.xy * r1.xx;
    r1.x = r1.x * r2.x;
    r6.xyz = (r5.xyz < float3(0.5,0.5,0.5));
    r7.xyz = r5.xyz + r5.xyz;
    r7.xyz = _CharacterLocalMainLightColor1.xyz * r7.xyz;
    r8.xyz = -r3.xyz * r0.xyz + float3(1,1,1);
    r8.xyz = r8.xyz + r8.xyz;
    r4.xyz = -r8.xyz * r4.yzw + float3(1,1,1);
    r4.xyz = r6.xyz ? r7.xyz : r4.xyz;
    r3.xyz = -r3.xyz * r0.xyz + r4.xyz;
    r3.xyz = r1.xxx * r3.xyz + r5.xyz;
    r4.xyz = _CharacterLocalMainLightColor2.xyz * r1.zzz;
    r2.xzw = r4.xyz * r2.xxx + r3.xyz;
    r1.x = (uint)r1.w;
    switch (r1.x) {
      case 1 :    r1.xzw = _RimShadowColor1.xyz;
      r3.xy = float2(_RimShadowWidth1.x, _RimShadowFeather1.x);
      break;
      case 2 :    r1.xzw = _RimShadowColor2.xyz;
      r3.xy = float2(_RimShadowWidth2.x, _RimShadowFeather2.x);
      break;
      case 3 :    r1.xzw = _RimShadowColor3.xyz;
      r3.xy = float2(_RimShadowWidth3.x, _RimShadowFeather3.x);
      break;
      case 4 :    r1.xzw = _RimShadowColor4.xyz;
      r3.xy = float2(_RimShadowWidth4.x, _RimShadowFeather4.x);
      break;
      case 5 :    r1.xzw = _RimShadowColor5.xyz;
      r3.xy = float2(_RimShadowWidth5.x, _RimShadowFeather5.x);
      break;
      case 6 :    r1.xzw = _RimShadowColor6.xyz;
      r3.xy = float2(_RimShadowWidth6.x, _RimShadowFeather6.x);
      break;
      case 7 :    r1.xzw = _RimShadowColor7.xyz;
      r3.xy = float2(_RimShadowWidth7.x, _RimShadowFeather7.x);
      break;
      default :
      r1.xzw = _RimShadowColor0.xyz;
      r3.x = _RimShadowWidth0.x;
      r3.y = _RimShadowFeather0.x;
      break;
    }
    if (_UseMaterialValuesLUT.x != 0) {
      r4.x = (int)r1.y;
      r4.yzw = float3(7.00649232e-045,0,8.40779079e-045);
      r1.xzw = _MaterialValuesPackLUT.Load(r4.xyz).xyz;
      r3.xy = _MaterialValuesPackLUT.Load(r4.xwz).xy;
    }
    r4.xyz = _ES_RimShadowColor.xyz * _ES_RimShadowColor.www;
    r4.xyz = r4.xyz + r4.xyz;
    r1.y = 1 + -r2.y;
    r1.y = max(0.00100000005, r1.y);
    r1.y = log2(r1.y);
    r1.y = _RimShadowCt.x * r1.y;
    r1.y = exp2(r1.y);
    r1.y = saturate(r3.x * r1.y);
    r2.y = 1 + -r3.y;
    r1.y = r1.y + -r3.y;
    r2.y = 1 / r2.y;
    r1.y = saturate(r2.y * r1.y);
    r2.y = r1.y * -2 + 3;
    r1.y = r1.y * r1.y;
    r1.y = r2.y * r1.y;
    r1.y = _RimShadowIntensity.x * r1.y;
    r1.y = _ES_RimShadowIntensity.x * r1.y;
    r1.y = 0.25 * r1.y;
    r1.xzw = r1.xzw * r4.xyz + float3(-1,-1,-1);
    r1.xyz = r1.yyy * r1.xzw + float3(1,1,1);
    r1.xyz = r2.xzw * r1.xyz;
    r1.w = (_UseOverHeated.x == 1.000000);
    r2.x = -_CharaWorldSpaceOffset.y + v5.y;
    r2.y = max(0.00999999978, _HeatedHeight.x);
    r2.y = 1 / r2.y;
    r2.x = saturate(r2.x * r2.y);
    r2.y = r2.x * -2 + 3;
    r2.x = r2.x * r2.x;
    r2.z = r2.y * r2.x;
    r2.x = -r2.y * r2.x + 1;
    r2.y = 1 + -_HeatedThreshould.x;
    r2.w = 1 / -_HeatedThreshould.x;
    r2.z = saturate(-r2.z * r2.w);
    r2.w = r2.z * -2 + 3;
    r2.z = r2.z * r2.z;
    r2.z = r2.w * r2.z;
    r2.w = -_HeatedThreshould.x * 2 + 1;
    r2.w = r2.w + -r2.y;
    r2.y = r2.x + -r2.y;
    r2.w = 1 / r2.w;
    r2.y = saturate(r2.y * r2.w);
    r2.w = r2.y * -2 + 3;
    r2.y = r2.y * r2.y;
    r2.y = r2.w * r2.y;
    r3.xyz = _HeatColor1.xyz + -_HeatColor0.xyz;
    r3.xyz = r2.zzz * r3.xyz + _HeatColor0.xyz;
    r4.xyz = _HeatColor2.xyz + -r3.xyz;
    r2.yzw = r2.yyy * r4.xyz + r3.xyz;
    r2.xyz = r2.yzw * r2.xxx;
    r2.xyz = r2.xyz * _HeatInst.xxx + r1.xyz;
    o0.xyz = r1.www ? r2.xyz : r1.xyz;
    r1.x = (0 < _EnableAlphaCutoff.x);
    r0.w = -_AlphaTestThreshold.x + r0.w;
    r0.w = (r0.w < 0);
    r0.w = r1.x ? r0.w : 0;
    if (r0.w != 0) discard;
    r0.w = dot(float3(1,1,1), abs(v6.xyz));
    r0.w = max(9.99999975e-005, r0.w);
    r1.xy = v6.xy / r0.ww;
    r0.w = (0 >= v6.z);
    r1.zw = float2(1,1) + -abs(r1.yx);
    r2.xy = (r1.xy >= float2(0,0));
    r2.xy = r2.xy ? float2(1,1) : float2(-1,-1);
    r1.zw = r2.xy * r1.zw;
    r1.xy = r0.ww ? r1.zw : r1.xy;
    o1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
    r0.z = r0.z * 127 + 128;
    r0.z = trunc(r0.z);
    o1.z = 1.52590219e-005 * r0.z;
    o0.w = r0.x;
    o1.w = r0.y;
    o2.xy = float2(0,0);
    return;
}
