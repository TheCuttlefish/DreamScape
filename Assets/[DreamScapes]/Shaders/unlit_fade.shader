// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32998,y:32750,varname:node_3138,prsc:2|emission-9584-OUT,alpha-3566-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31956,y:32547,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:8371,x:32078,y:32888,ptovrint:False,ptlb:_MainTex,ptin:__MainTex,varname:node_8371,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8e946d5aecdc44b47be916439a238c45,ntxv:0,isnm:False|UVIN-7915-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9584,x:32319,y:32751,varname:node_9584,prsc:2|A-7241-RGB,B-8371-RGB;n:type:ShaderForge.SFN_Multiply,id:3566,x:32376,y:32917,varname:node_3566,prsc:2|A-7241-A,B-8371-A;n:type:ShaderForge.SFN_Rotator,id:7915,x:31921,y:32888,varname:node_7915,prsc:2|UVIN-1190-UVOUT,SPD-9311-OUT;n:type:ShaderForge.SFN_TexCoord,id:1190,x:31657,y:32812,varname:node_1190,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Slider,id:9311,x:31395,y:33012,ptovrint:False,ptlb:rot speed,ptin:_rotspeed,varname:node_9311,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.354804,max:10;proporder:7241-8371-9311;pass:END;sub:END;*/

Shader "Shader Forge/unlit_fade" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        __MainTex ("_MainTex", 2D) = "white" {}
        _rotspeed ("rot speed", Range(0, 10)) = 4.354804
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D __MainTex; uniform float4 __MainTex_ST;
            uniform float _rotspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_6795 = _Time;
                float node_7915_ang = node_6795.g;
                float node_7915_spd = _rotspeed;
                float node_7915_cos = cos(node_7915_spd*node_7915_ang);
                float node_7915_sin = sin(node_7915_spd*node_7915_ang);
                float2 node_7915_piv = float2(0.5,0.5);
                float2 node_7915 = (mul(i.uv0-node_7915_piv,float2x2( node_7915_cos, -node_7915_sin, node_7915_sin, node_7915_cos))+node_7915_piv);
                float4 __MainTex_var = tex2D(__MainTex,TRANSFORM_TEX(node_7915, __MainTex));
                float3 emissive = (_Color.rgb*__MainTex_var.rgb);
                float3 finalColor = emissive;
                return fixed4(finalColor,(_Color.a*__MainTex_var.a));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
