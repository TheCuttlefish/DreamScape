// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:True,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.1843137,fgcg:0.1803922,fgcb:0.2509804,fgca:1,fgde:0.05,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32877,y:32714,varname:node_3138,prsc:2|emission-18-OUT,alpha-2488-OUT;n:type:ShaderForge.SFN_Tex2d,id:2945,x:32093,y:33003,varname:node_2945,prsc:2,tex:729c8d08921db044fb1c89cebeacae92,ntxv:0,isnm:False|UVIN-2068-UVOUT,TEX-7591-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7591,x:31237,y:33247,ptovrint:False,ptlb:cloud,ptin:_cloud,varname:node_7591,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:729c8d08921db044fb1c89cebeacae92,ntxv:0,isnm:False;n:type:ShaderForge.SFN_TexCoord,id:3324,x:30799,y:32887,varname:node_3324,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:4890,x:32093,y:33129,varname:node_4890,prsc:2,tex:729c8d08921db044fb1c89cebeacae92,ntxv:0,isnm:False|UVIN-2743-UVOUT,TEX-7591-TEX;n:type:ShaderForge.SFN_Multiply,id:7006,x:32313,y:33067,varname:node_7006,prsc:2|A-2945-A,B-4890-A;n:type:ShaderForge.SFN_Subtract,id:5552,x:31556,y:32734,varname:node_5552,prsc:2|A-1423-OUT,B-3324-UVOUT;n:type:ShaderForge.SFN_Vector2,id:1423,x:31275,y:32716,varname:node_1423,prsc:2,v1:0.5,v2:0.5;n:type:ShaderForge.SFN_Length,id:1233,x:31972,y:32667,varname:node_1233,prsc:2|IN-5552-OUT;n:type:ShaderForge.SFN_Multiply,id:2488,x:32514,y:32898,varname:node_2488,prsc:2|A-4335-OUT,B-7006-OUT;n:type:ShaderForge.SFN_Clamp01,id:4335,x:32347,y:32807,varname:node_4335,prsc:2|IN-5521-OUT;n:type:ShaderForge.SFN_RemapRange,id:5521,x:32188,y:32752,varname:node_5521,prsc:2,frmn:0,frmx:1,tomn:1,tomx:-1|IN-1233-OUT;n:type:ShaderForge.SFN_Rotator,id:5237,x:31556,y:32904,varname:node_5237,prsc:2|UVIN-795-OUT,SPD-2046-OUT;n:type:ShaderForge.SFN_Vector1,id:2046,x:31254,y:33049,varname:node_2046,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Vector1,id:3883,x:31237,y:33155,varname:node_3883,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Rotator,id:337,x:31556,y:33067,varname:node_337,prsc:2|UVIN-795-OUT,SPD-3883-OUT;n:type:ShaderForge.SFN_Panner,id:2068,x:31775,y:32904,varname:node_2068,prsc:2,spu:0.1,spv:0.1|UVIN-5237-UVOUT;n:type:ShaderForge.SFN_Panner,id:2743,x:31830,y:33088,varname:node_2743,prsc:2,spu:0,spv:0.2|UVIN-337-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:1609,x:30444,y:33001,ptovrint:False,ptlb:node_1609,ptin:_node_1609,varname:node_1609,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:de0ea48879ff2a94081d36cc50e8eaf0,ntxv:0,isnm:False|UVIN-8331-UVOUT;n:type:ShaderForge.SFN_Append,id:1349,x:30774,y:33063,varname:node_1349,prsc:2|A-1609-R,B-1609-G;n:type:ShaderForge.SFN_Lerp,id:795,x:31040,y:32940,varname:node_795,prsc:2|A-3324-UVOUT,B-1349-OUT,T-857-OUT;n:type:ShaderForge.SFN_Slider,id:857,x:30570,y:33287,ptovrint:False,ptlb:warp texture,ptin:_warptexture,varname:node_857,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1681691,max:1;n:type:ShaderForge.SFN_TexCoord,id:1631,x:29753,y:33105,varname:node_1631,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:8331,x:30100,y:33143,varname:node_8331,prsc:2|UVIN-1631-UVOUT,SPD-7558-OUT;n:type:ShaderForge.SFN_Slider,id:7558,x:29546,y:33379,ptovrint:False,ptlb:speed of rotation,ptin:_speedofrotation,varname:node_7558,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_Multiply,id:18,x:32319,y:32472,varname:node_18,prsc:2|A-1059-RGB,B-1169-RGB,C-2373-OUT;n:type:ShaderForge.SFN_Color,id:1059,x:31795,y:32292,ptovrint:False,ptlb:color,ptin:_color,varname:node_1059,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.05147058,c3:0.05147058,c4:1;n:type:ShaderForge.SFN_Tex2d,id:1169,x:31414,y:33293,varname:node_1169,prsc:2,tex:729c8d08921db044fb1c89cebeacae92,ntxv:0,isnm:False|TEX-7591-TEX;n:type:ShaderForge.SFN_Slider,id:2373,x:31777,y:32542,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_2373,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:3.591002,max:5;proporder:7591-1609-857-7558-1059-2373;pass:END;sub:END;*/

Shader "Shader Forge/portal_smoke" {
    Properties {
        _cloud ("cloud", 2D) = "white" {}
        _node_1609 ("node_1609", 2D) = "white" {}
        _warptexture ("warp texture", Range(0, 1)) = 0.1681691
        _speedofrotation ("speed of rotation", Range(0, 1)) = 0.1
        _color ("color", Color) = (1,0.05147058,0.05147058,1)
        _alpha ("alpha", Range(1, 5)) = 3.591002
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform sampler2D _node_1609; uniform float4 _node_1609_ST;
            uniform float _warptexture;
            uniform float _speedofrotation;
            uniform float4 _color;
            uniform float _alpha;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_1169 = tex2D(_cloud,TRANSFORM_TEX(i.uv0, _cloud));
                float3 emissive = (_color.rgb*node_1169.rgb*_alpha);
                float3 finalColor = emissive;
                float4 node_7415 = _Time;
                float node_5237_ang = node_7415.g;
                float node_5237_spd = 0.1;
                float node_5237_cos = cos(node_5237_spd*node_5237_ang);
                float node_5237_sin = sin(node_5237_spd*node_5237_ang);
                float2 node_5237_piv = float2(0.5,0.5);
                float node_8331_ang = node_7415.g;
                float node_8331_spd = _speedofrotation;
                float node_8331_cos = cos(node_8331_spd*node_8331_ang);
                float node_8331_sin = sin(node_8331_spd*node_8331_ang);
                float2 node_8331_piv = float2(0.5,0.5);
                float2 node_8331 = (mul(i.uv0-node_8331_piv,float2x2( node_8331_cos, -node_8331_sin, node_8331_sin, node_8331_cos))+node_8331_piv);
                float4 _node_1609_var = tex2D(_node_1609,TRANSFORM_TEX(node_8331, _node_1609));
                float2 node_795 = lerp(i.uv0,float2(_node_1609_var.r,_node_1609_var.g),_warptexture);
                float2 node_5237 = (mul(node_795-node_5237_piv,float2x2( node_5237_cos, -node_5237_sin, node_5237_sin, node_5237_cos))+node_5237_piv);
                float2 node_2068 = (node_5237+node_7415.g*float2(0.1,0.1));
                float4 node_2945 = tex2D(_cloud,TRANSFORM_TEX(node_2068, _cloud));
                float node_337_ang = node_7415.g;
                float node_337_spd = 0.5;
                float node_337_cos = cos(node_337_spd*node_337_ang);
                float node_337_sin = sin(node_337_spd*node_337_ang);
                float2 node_337_piv = float2(0.5,0.5);
                float2 node_337 = (mul(node_795-node_337_piv,float2x2( node_337_cos, -node_337_sin, node_337_sin, node_337_cos))+node_337_piv);
                float2 node_2743 = (node_337+node_7415.g*float2(0,0.2));
                float4 node_4890 = tex2D(_cloud,TRANSFORM_TEX(node_2743, _cloud));
                fixed4 finalRGBA = fixed4(finalColor,(saturate((length((float2(0.5,0.5)-i.uv0))*-2.0+1.0))*(node_2945.a*node_4890.a)));
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
