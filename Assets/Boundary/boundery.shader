// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:1,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5294118,fgcg:0.8431373,fgcb:1,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32951,y:32709,varname:node_2865,prsc:2|emission-6665-RGB,alpha-1816-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:32375,y:32678,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Panner,id:3820,x:31300,y:32806,varname:node_3820,prsc:2,spu:0,spv:1|UVIN-6969-UVOUT,DIST-4217-OUT;n:type:ShaderForge.SFN_Tex2d,id:9466,x:31745,y:32998,varname:node_9466,prsc:2,tex:de0ea48879ff2a94081d36cc50e8eaf0,ntxv:0,isnm:False|UVIN-1819-UVOUT,TEX-2225-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2225,x:31476,y:32932,ptovrint:False,ptlb:node_2225,ptin:_node_2225,varname:node_2225,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:de0ea48879ff2a94081d36cc50e8eaf0,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4158,x:31745,y:32807,varname:node_4158,prsc:2,tex:de0ea48879ff2a94081d36cc50e8eaf0,ntxv:0,isnm:False|UVIN-3820-UVOUT,TEX-2225-TEX;n:type:ShaderForge.SFN_Panner,id:1819,x:31300,y:32997,varname:node_1819,prsc:2,spu:0,spv:0.5|UVIN-6969-UVOUT,DIST-4217-OUT;n:type:ShaderForge.SFN_TexCoord,id:6969,x:30922,y:32802,varname:node_6969,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:5025,x:32169,y:32893,varname:node_5025,prsc:2|A-4158-R,B-9466-G;n:type:ShaderForge.SFN_Multiply,id:4217,x:30922,y:33025,varname:node_4217,prsc:2|A-6223-T,B-2284-OUT;n:type:ShaderForge.SFN_Time,id:6223,x:30708,y:33003,varname:node_6223,prsc:2;n:type:ShaderForge.SFN_Slider,id:2284,x:30551,y:33155,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_2284,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2136752,max:1;n:type:ShaderForge.SFN_Distance,id:7172,x:31202,y:33641,varname:node_7172,prsc:2|A-5098-XYZ,B-2995-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:5098,x:30978,y:33580,varname:node_5098,prsc:2;n:type:ShaderForge.SFN_Lerp,id:9729,x:31818,y:33536,varname:node_9729,prsc:2|A-9557-OUT,B-4396-OUT,T-7023-OUT;n:type:ShaderForge.SFN_Multiply,id:2347,x:31446,y:33656,varname:node_2347,prsc:2|A-7172-OUT,B-8239-OUT;n:type:ShaderForge.SFN_Clamp01,id:7023,x:31640,y:33645,varname:node_7023,prsc:2|IN-2347-OUT;n:type:ShaderForge.SFN_ComponentMask,id:4801,x:32005,y:33526,varname:node_4801,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9729-OUT;n:type:ShaderForge.SFN_Multiply,id:1816,x:32497,y:33013,varname:node_1816,prsc:2|A-5025-OUT,B-4801-OUT;n:type:ShaderForge.SFN_ViewPosition,id:2995,x:30836,y:33767,varname:node_2995,prsc:2;n:type:ShaderForge.SFN_Vector1,id:8239,x:31202,y:33769,varname:node_8239,prsc:2,v1:0.006;n:type:ShaderForge.SFN_Color,id:464,x:32096,y:32496,ptovrint:False,ptlb:Color_copy_copy,ptin:_Color_copy_copy,varname:_Color_copy_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Distance,id:3972,x:32035,y:32875,varname:node_3972,prsc:2|A-3322-XYZ,B-9524-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3322,x:31811,y:32814,varname:node_3322,prsc:2;n:type:ShaderForge.SFN_Vector3,id:9524,x:31811,y:32939,varname:node_9524,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:1107,x:32651,y:32770,varname:node_1107,prsc:2|A-464-RGB,B-9277-RGB,T-3787-OUT;n:type:ShaderForge.SFN_Color,id:9277,x:32096,y:32664,ptovrint:False,ptlb:node_9735_copy,ptin:_node_9735_copy,varname:_node_9735_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:242,x:32279,y:32890,varname:node_242,prsc:2|A-3972-OUT,B-210-OUT;n:type:ShaderForge.SFN_Slider,id:210,x:31926,y:33081,ptovrint:False,ptlb:alpha amount_copy,ptin:_alphaamount_copy,varname:_alphaamount_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Clamp01,id:3787,x:32473,y:32879,varname:node_3787,prsc:2|IN-242-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3986,x:32665,y:32923,varname:node_3986,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-1107-OUT;n:type:ShaderForge.SFN_Vector3,id:9557,x:31555,y:33421,varname:node_9557,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Vector3,id:4396,x:31555,y:33523,varname:node_4396,prsc:2,v1:0,v2:0,v3:0;proporder:6665-2225-2284;pass:END;sub:END;*/

Shader "Shader Forge/boundery" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _node_2225 ("node_2225", 2D) = "white" {}
        _speed ("speed", Range(0, 1)) = 0.2136752
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Front
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _node_2225; uniform float4 _node_2225_ST;
            uniform float _speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = _Color.rgb;
                float3 finalColor = emissive;
                float4 node_6223 = _Time;
                float node_4217 = (node_6223.g*_speed);
                float2 node_3820 = (i.uv0+node_4217*float2(0,1));
                float4 node_4158 = tex2D(_node_2225,TRANSFORM_TEX(node_3820, _node_2225));
                float2 node_1819 = (i.uv0+node_4217*float2(0,0.5));
                float4 node_9466 = tex2D(_node_2225,TRANSFORM_TEX(node_1819, _node_2225));
                fixed4 finalRGBA = fixed4(finalColor,((node_4158.r*node_9466.g)*lerp(float3(1,1,1),float3(0,0,0),saturate((distance(i.posWorld.rgb,_WorldSpaceCameraPos)*0.006))).r));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = _Color.rgb;
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
