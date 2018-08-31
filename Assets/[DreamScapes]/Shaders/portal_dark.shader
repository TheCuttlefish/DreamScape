// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:1,fgcg:0.9686275,fgcb:0.8313726,fgca:1,fgde:0.05,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33215,y:32760,varname:node_3138,prsc:2|emission-3879-RGB,alpha-9919-OUT;n:type:ShaderForge.SFN_TexCoord,id:7620,x:31658,y:32637,varname:node_7620,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:6338,x:32035,y:32728,varname:node_6338,prsc:2|IN-8314-OUT;n:type:ShaderForge.SFN_Add,id:8314,x:31880,y:32728,varname:node_8314,prsc:2|A-7620-UVOUT,B-2833-OUT;n:type:ShaderForge.SFN_Vector2,id:2833,x:31658,y:32794,varname:node_2833,prsc:2,v1:-0.5,v2:-0.5;n:type:ShaderForge.SFN_Color,id:3879,x:32428,y:32459,ptovrint:False,ptlb:node_3879,ptin:_node_3879,varname:node_3879,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.8602941,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Clamp01,id:6459,x:32541,y:32919,varname:node_6459,prsc:2|IN-2532-OUT;n:type:ShaderForge.SFN_OneMinus,id:2610,x:32168,y:32837,varname:node_2610,prsc:2|IN-6338-OUT;n:type:ShaderForge.SFN_RemapRange,id:2532,x:32320,y:32864,varname:node_2532,prsc:2,frmn:0,frmx:0.5,tomn:-2,tomx:0|IN-2610-OUT;n:type:ShaderForge.SFN_Tex2d,id:3133,x:32541,y:33073,ptovrint:False,ptlb:node_3133,ptin:_node_3133,varname:node_3133,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:de0ea48879ff2a94081d36cc50e8eaf0,ntxv:0,isnm:False|UVIN-293-UVOUT;n:type:ShaderForge.SFN_Slider,id:4194,x:32384,y:33258,ptovrint:False,ptlb:radial alpha,ptin:_radialalpha,varname:node_4194,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.318483,max:1;n:type:ShaderForge.SFN_Lerp,id:1785,x:32746,y:32970,varname:node_1785,prsc:2|A-6459-OUT,B-3133-R,T-4194-OUT;n:type:ShaderForge.SFN_Multiply,id:9919,x:32942,y:32917,varname:node_9919,prsc:2|A-6459-OUT,B-1785-OUT;n:type:ShaderForge.SFN_TexCoord,id:3577,x:31988,y:33021,varname:node_3577,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4093,x:31988,y:33174,varname:node_4093,prsc:2|A-1862-T,B-4304-OUT;n:type:ShaderForge.SFN_Time,id:1862,x:31782,y:33154,varname:node_1862,prsc:2;n:type:ShaderForge.SFN_Slider,id:4304,x:31625,y:33314,ptovrint:False,ptlb:warp speed,ptin:_warpspeed,varname:node_4304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2820513,max:1;n:type:ShaderForge.SFN_Rotator,id:293,x:32280,y:33084,varname:node_293,prsc:2|UVIN-3577-UVOUT,SPD-4093-OUT;proporder:3879-3133-4194-4304;pass:END;sub:END;*/

Shader "Shader Forge/portal_dark" {
    Properties {
        _node_3879 ("node_3879", Color) = (0.8602941,0,0,1)
        _node_3133 ("node_3133", 2D) = "white" {}
        _radialalpha ("radial alpha", Range(0, 1)) = 0.318483
        _warpspeed ("warp speed", Range(0, 1)) = 0.2820513
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _node_3879;
            uniform sampler2D _node_3133; uniform float4 _node_3133_ST;
            uniform float _radialalpha;
            uniform float _warpspeed;
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
                float3 emissive = _node_3879.rgb;
                float3 finalColor = emissive;
                float node_6459 = saturate(((1.0 - length((i.uv0+float2(-0.5,-0.5))))*4.0+-2.0));
                float4 node_1486 = _Time;
                float4 node_1862 = _Time;
                float node_293_ang = node_1486.g;
                float node_293_spd = (node_1862.g*_warpspeed);
                float node_293_cos = cos(node_293_spd*node_293_ang);
                float node_293_sin = sin(node_293_spd*node_293_ang);
                float2 node_293_piv = float2(0.5,0.5);
                float2 node_293 = (mul(i.uv0-node_293_piv,float2x2( node_293_cos, -node_293_sin, node_293_sin, node_293_cos))+node_293_piv);
                float4 _node_3133_var = tex2D(_node_3133,TRANSFORM_TEX(node_293, _node_3133));
                return fixed4(finalColor,(node_6459*lerp(node_6459,_node_3133_var.r,_radialalpha)));
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
