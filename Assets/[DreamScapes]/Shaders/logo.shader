// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5294118,fgcg:0.8431373,fgcb:1,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|diff-7692-OUT,emission-7692-OUT,alpha-6897-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:9771,x:31858,y:32831,ptovrint:False,ptlb:logo,ptin:_logo,varname:node_9771,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:c999526a75e09e440a58ea54cfab7897,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Vector3,id:7687,x:31820,y:32482,varname:node_7687,prsc:2,v1:1,v2:1,v3:1;n:type:ShaderForge.SFN_Multiply,id:7692,x:32343,y:32565,varname:node_7692,prsc:2|A-7687-OUT,B-9925-RGB;n:type:ShaderForge.SFN_Tex2d,id:9925,x:32098,y:32730,varname:node_9925,prsc:2,tex:c999526a75e09e440a58ea54cfab7897,ntxv:0,isnm:False|UVIN-9855-OUT,TEX-9771-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:5489,x:30648,y:32924,ptovrint:False,ptlb:warp,ptin:_warp,varname:node_5489,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:6a2a7f0503a5bbc4b8798c08b7dc940d,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Lerp,id:9855,x:31708,y:32705,varname:node_9855,prsc:2|A-9039-UVOUT,B-6708-OUT,T-5903-OUT;n:type:ShaderForge.SFN_TexCoord,id:9039,x:31354,y:32580,varname:node_9039,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:2273,x:31109,y:32802,varname:node_2273,prsc:2,tex:6a2a7f0503a5bbc4b8798c08b7dc940d,ntxv:0,isnm:False|UVIN-7526-OUT,TEX-5489-TEX;n:type:ShaderForge.SFN_ComponentMask,id:6708,x:31423,y:32818,varname:node_6708,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3706-OUT;n:type:ShaderForge.SFN_Slider,id:5903,x:31365,y:33277,ptovrint:False,ptlb:transition,ptin:_transition,varname:node_5903,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:1316,x:30042,y:32373,varname:node_1316,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:5545,x:30237,y:32449,varname:node_5545,prsc:2|UVIN-1316-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2171,x:30374,y:32174,varname:node_2171,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:4915,x:30614,y:32195,varname:node_4915,prsc:2,spu:0.1,spv:0.1|UVIN-2171-UVOUT;n:type:ShaderForge.SFN_Lerp,id:7526,x:30868,y:32490,varname:node_7526,prsc:2|A-4915-UVOUT,B-4571-OUT,T-7563-OUT;n:type:ShaderForge.SFN_TexCoord,id:2900,x:31193,y:33387,varname:node_2900,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:1480,x:31760,y:33387,varname:node_1480,prsc:2|IN-4467-OUT;n:type:ShaderForge.SFN_Add,id:2174,x:31408,y:33387,varname:node_2174,prsc:2|A-2900-UVOUT,B-5100-OUT;n:type:ShaderForge.SFN_Vector2,id:5100,x:31193,y:33538,varname:node_5100,prsc:2,v1:-0.5,v2:-0.5;n:type:ShaderForge.SFN_Multiply,id:6897,x:32419,y:32929,varname:node_6897,prsc:2|A-9925-A,B-3668-OUT,C-8077-OUT;n:type:ShaderForge.SFN_RemapRange,id:4467,x:31602,y:33387,varname:node_4467,prsc:2,frmn:0,frmx:0.5,tomn:0,tomx:1|IN-2174-OUT;n:type:ShaderForge.SFN_OneMinus,id:785,x:31936,y:33387,varname:node_785,prsc:2|IN-1480-OUT;n:type:ShaderForge.SFN_Clamp01,id:8077,x:32111,y:33387,varname:node_8077,prsc:2|IN-785-OUT;n:type:ShaderForge.SFN_OneMinus,id:3668,x:31701,y:33044,varname:node_3668,prsc:2|IN-5903-OUT;n:type:ShaderForge.SFN_Vector1,id:7563,x:30625,y:32650,varname:node_7563,prsc:2,v1:0.2210913;n:type:ShaderForge.SFN_Lerp,id:4571,x:30510,y:32592,varname:node_4571,prsc:2|A-5545-UVOUT,B-8574-OUT,T-1333-OUT;n:type:ShaderForge.SFN_Slider,id:1333,x:30258,y:32948,ptovrint:False,ptlb:lerp,ptin:_lerp,varname:node_1333,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4460814,max:1;n:type:ShaderForge.SFN_Tex2d,id:9727,x:31029,y:32962,varname:node_9727,prsc:2,tex:6a2a7f0503a5bbc4b8798c08b7dc940d,ntxv:0,isnm:False|TEX-5489-TEX;n:type:ShaderForge.SFN_TexCoord,id:4531,x:29930,y:32662,varname:node_4531,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:8574,x:30181,y:32662,varname:node_8574,prsc:2|IN-4531-UVOUT;n:type:ShaderForge.SFN_Lerp,id:3706,x:31246,y:32962,varname:node_3706,prsc:2|A-2273-RGB,B-9727-RGB,T-2299-OUT;n:type:ShaderForge.SFN_Slider,id:2299,x:30823,y:33181,ptovrint:False,ptlb:node_2299,ptin:_node_2299,varname:node_2299,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4430192,max:1;proporder:9771-5489-5903-1333-2299;pass:END;sub:END;*/

Shader "Shader Forge/logo" {
    Properties {
        _logo ("logo", 2D) = "white" {}
        _warp ("warp", 2D) = "white" {}
        _transition ("transition", Range(0, 1)) = 0
        _lerp ("lerp", Range(0, 1)) = 0.4460814
        _node_2299 ("node_2299", Range(0, 1)) = 0.4430192
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
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _logo; uniform float4 _logo_ST;
            uniform sampler2D _warp; uniform float4 _warp_ST;
            uniform float _transition;
            uniform float _lerp;
            uniform float _node_2299;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 node_428 = _Time;
                float node_5545_ang = node_428.g;
                float node_5545_spd = 1.0;
                float node_5545_cos = cos(node_5545_spd*node_5545_ang);
                float node_5545_sin = sin(node_5545_spd*node_5545_ang);
                float2 node_5545_piv = float2(0.5,0.5);
                float2 node_5545 = (mul(i.uv0-node_5545_piv,float2x2( node_5545_cos, -node_5545_sin, node_5545_sin, node_5545_cos))+node_5545_piv);
                float node_8574 = length(i.uv0);
                float2 node_7526 = lerp((i.uv0+node_428.g*float2(0.1,0.1)),lerp(node_5545,float2(node_8574,node_8574),_lerp),0.2210913);
                float4 node_2273 = tex2D(_warp,TRANSFORM_TEX(node_7526, _warp));
                float4 node_9727 = tex2D(_warp,TRANSFORM_TEX(i.uv0, _warp));
                float2 node_9855 = lerp(i.uv0,lerp(node_2273.rgb,node_9727.rgb,_node_2299).rg,_transition);
                float4 node_9925 = tex2D(_logo,TRANSFORM_TEX(node_9855, _logo));
                float3 node_7692 = (float3(1,1,1)*node_9925.rgb);
                float3 diffuseColor = node_7692;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_7692;
/// Final Color:
                float3 finalColor = diffuse + emissive;
                return fixed4(finalColor,(node_9925.a*(1.0 - _transition)*saturate((1.0 - length(((i.uv0+float2(-0.5,-0.5))*2.0+0.0))))));
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _logo; uniform float4 _logo_ST;
            uniform sampler2D _warp; uniform float4 _warp_ST;
            uniform float _transition;
            uniform float _lerp;
            uniform float _node_2299;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                LIGHTING_COORDS(3,4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_1646 = _Time;
                float node_5545_ang = node_1646.g;
                float node_5545_spd = 1.0;
                float node_5545_cos = cos(node_5545_spd*node_5545_ang);
                float node_5545_sin = sin(node_5545_spd*node_5545_ang);
                float2 node_5545_piv = float2(0.5,0.5);
                float2 node_5545 = (mul(i.uv0-node_5545_piv,float2x2( node_5545_cos, -node_5545_sin, node_5545_sin, node_5545_cos))+node_5545_piv);
                float node_8574 = length(i.uv0);
                float2 node_7526 = lerp((i.uv0+node_1646.g*float2(0.1,0.1)),lerp(node_5545,float2(node_8574,node_8574),_lerp),0.2210913);
                float4 node_2273 = tex2D(_warp,TRANSFORM_TEX(node_7526, _warp));
                float4 node_9727 = tex2D(_warp,TRANSFORM_TEX(i.uv0, _warp));
                float2 node_9855 = lerp(i.uv0,lerp(node_2273.rgb,node_9727.rgb,_node_2299).rg,_transition);
                float4 node_9925 = tex2D(_logo,TRANSFORM_TEX(node_9855, _logo));
                float3 node_7692 = (float3(1,1,1)*node_9925.rgb);
                float3 diffuseColor = node_7692;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * (node_9925.a*(1.0 - _transition)*saturate((1.0 - length(((i.uv0+float2(-0.5,-0.5))*2.0+0.0))))),0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
