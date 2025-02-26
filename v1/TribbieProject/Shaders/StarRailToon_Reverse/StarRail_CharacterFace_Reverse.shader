Shader "StarRail/CharacterFace_Reverse"
{
    Properties
    {
        [Enum(UnityEngine.Rendering.CullMode)] _Cull("Cull", Float) = 2
        _MainTex ("MainTex", 2D) = "white" { }
        _SpecialEyeShapeTexture ("SpecialEyeShapeTexture", 2D) = "white" { }
        _FaceMap ("FaceMap", 2D) = "white" { }
        _FaceExpression ("FaceExpression", 2D) = "white" { }
        _MainLightShadowmapTexture_Custom ("MainLightShadowmapTexture", 2D) = "white" { }
        _CharacterHairShadowMap ("CharacterHairShadowMap", 2D) = "white" { }
        _ES_GradientAtlas ("GradientAtlas", 2D) = "white" { }
        _FogTex ("FogTex", 2D) = "white" { }
    }

    Subshader
    {
        Tags
        {
            "RenderType" = "Opaque"
            "RenderPipeline" = "UniversalPipeline"
            "UniversalMaterialType" = "Lit"
            "IgnoreProjector" = "True"
        }

        Pass
        {
            Name "Forward"
            Tags {"LightMode" = "UniversalForward"}

            Cull[_Cull]
            ZWrite On
            Blend One Zero

            HLSLPROGRAM

            #pragma vertex Vertex
            #pragma fragment Fragment

            #include "StarRail_CharacterFace_Reverse.hlsl"

            ENDHLSL
        }

        Pass
        {
            Name "ShadowCaster"
            Tags{"LightMode" = "ShadowCaster"}

            ZWrite On
            ZTest LEqual
            ColorMask 0
            Cull[_Cull]

            HLSLPROGRAM

            #pragma vertex ShadowPassVertex
            #pragma fragment ShadowPassFragment

            #include "Packages/com.unity.render-pipelines.universal/Shaders/LitInput.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Shaders/ShadowCasterPass.hlsl"

            ENDHLSL
        }

        Pass
        {
            Name "DepthOnly"
            Tags{"LightMode" = "DepthOnly"}

            ZWrite On
            ColorMask R
            Cull[_Cull]

            HLSLPROGRAM

            #pragma vertex DepthOnlyVertex
            #pragma fragment DepthOnlyFragment

            #include "Packages/com.unity.render-pipelines.universal/Shaders/LitInput.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Shaders/DepthOnlyPass.hlsl"

            ENDHLSL
        }

        Pass
        {
            Name "DepthNormals"
            Tags{"LightMode" = "DepthNormals"}

            ZWrite On
            Cull[_Cull]

            HLSLPROGRAM

            #pragma vertex DepthNormalsVertex
            #pragma fragment DepthNormalsFragment

            #include "Packages/com.unity.render-pipelines.universal/Shaders/LitInput.hlsl"
            #include "Packages/com.unity.render-pipelines.universal/Shaders/LitDepthNormalsPass.hlsl"

            ENDHLSL
        }
    }
}
