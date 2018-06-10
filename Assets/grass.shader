// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5294118,fgcg:0.8431373,fgcb:1,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32852,y:32709,varname:node_3138,prsc:2|emission-6943-OUT,alpha-5931-A,voffset-8057-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32233,y:32434,ptovrint:False,ptlb:Tip,ptin:_Tip,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.6470886,c2:0.7720588,c3:0.295199,c4:1;n:type:ShaderForge.SFN_Tex2dAsset,id:241,x:31923,y:33030,ptovrint:False,ptlb:grass,ptin:_grass,varname:node_241,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1024142dd5512f0468d5579b3edf38ad,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:5931,x:32108,y:32991,varname:node_5931,prsc:2,tex:1024142dd5512f0468d5579b3edf38ad,ntxv:0,isnm:False|TEX-241-TEX;n:type:ShaderForge.SFN_FragmentPosition,id:2538,x:31789,y:32625,varname:node_2538,prsc:2;n:type:ShaderForge.SFN_Lerp,id:6943,x:32700,y:32611,varname:node_6943,prsc:2|A-854-RGB,B-7241-RGB,T-6234-OUT;n:type:ShaderForge.SFN_Color,id:854,x:32233,y:32611,ptovrint:False,ptlb:Roots,ptin:_Roots,varname:node_854,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1790657,c2:0.3529412,c3:0.2018494,c4:1;n:type:ShaderForge.SFN_Multiply,id:2636,x:32233,y:32762,varname:node_2636,prsc:2|A-6786-OUT,B-6303-OUT;n:type:ShaderForge.SFN_Slider,id:6303,x:31816,y:32876,ptovrint:False,ptlb:amount y,ptin:_amounty,varname:node_6303,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_ObjectPosition,id:9806,x:31789,y:32737,varname:node_9806,prsc:2;n:type:ShaderForge.SFN_Subtract,id:6786,x:31985,y:32692,varname:node_6786,prsc:2|A-2538-Y,B-9806-Y;n:type:ShaderForge.SFN_Add,id:1141,x:32412,y:32762,varname:node_1141,prsc:2|A-2636-OUT,B-2824-OUT;n:type:ShaderForge.SFN_Slider,id:2824,x:32093,y:32918,ptovrint:False,ptlb:move y,ptin:_movey,varname:node_2824,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:0,max:2;n:type:ShaderForge.SFN_RemapRange,id:6234,x:32591,y:32744,varname:node_6234,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.5|IN-1141-OUT;n:type:ShaderForge.SFN_Multiply,id:8057,x:32546,y:33125,varname:node_8057,prsc:2|A-8507-OUT,B-9135-OUT;n:type:ShaderForge.SFN_NormalVector,id:8507,x:32240,y:33142,prsc:2,pt:False;n:type:ShaderForge.SFN_FragmentPosition,id:5381,x:31994,y:33353,varname:node_5381,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:4464,x:31994,y:33485,varname:node_4464,prsc:2;n:type:ShaderForge.SFN_Subtract,id:7770,x:32204,y:33431,varname:node_7770,prsc:2|A-5381-Y,B-4464-Y;n:type:ShaderForge.SFN_Multiply,id:9135,x:32507,y:33366,varname:node_9135,prsc:2|A-7770-OUT,B-8092-OUT;n:type:ShaderForge.SFN_Cos,id:8092,x:32385,y:33502,varname:node_8092,prsc:2|IN-8623-T;n:type:ShaderForge.SFN_Time,id:8623,x:32071,y:33633,varname:node_8623,prsc:2;proporder:241-7241-854-6303-2824;pass:END;sub:END;*/

Shader "Shader Forge/grass" {
    Properties {
        _grass ("grass", 2D) = "white" {}
        _Tip ("Tip", Color) = (0.6470886,0.7720588,0.295199,1)
        _Roots ("Roots", Color) = (0.1790657,0.3529412,0.2018494,1)
        _amounty ("amount y", Range(0, 5)) = 1
        _movey ("move y", Range(-2, 2)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
            "DisableBatching"="True"
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Tip;
            uniform sampler2D _grass; uniform float4 _grass_ST;
            uniform float4 _Roots;
            uniform float _amounty;
            uniform float _movey;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_8623 = _Time;
                v.vertex.xyz += (v.normal*((mul(unity_ObjectToWorld, v.vertex).g-objPos.g)*cos(node_8623.g)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float3 emissive = lerp(_Roots.rgb,_Tip.rgb,((((i.posWorld.g-objPos.g)*_amounty)+_movey)*0.5+0.0));
                float3 finalColor = emissive;
                float4 node_5931 = tex2D(_grass,TRANSFORM_TEX(i.uv0, _grass));
                fixed4 finalRGBA = fixed4(finalColor,node_5931.a);
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 node_8623 = _Time;
                v.vertex.xyz += (v.normal*((mul(unity_ObjectToWorld, v.vertex).g-objPos.g)*cos(node_8623.g)));
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
