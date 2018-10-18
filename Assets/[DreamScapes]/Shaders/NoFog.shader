// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:1,fgcg:0.9852874,fgcb:0.8666667,fgca:1,fgde:0.005,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-2648-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32026,y:32787,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_ViewPosition,id:4215,x:31087,y:33209,varname:node_4215,prsc:2;n:type:ShaderForge.SFN_FragmentPosition,id:6233,x:30959,y:33055,varname:node_6233,prsc:2;n:type:ShaderForge.SFN_Distance,id:9792,x:31371,y:33097,varname:node_9792,prsc:2|A-6233-XYZ,B-4215-XYZ;n:type:ShaderForge.SFN_Lerp,id:2648,x:32374,y:33051,varname:node_2648,prsc:2|A-7241-RGB,B-3551-RGB,T-9390-OUT;n:type:ShaderForge.SFN_Color,id:3551,x:32026,y:32966,ptovrint:False,ptlb:node_3551,ptin:_node_3551,varname:node_3551,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:7458,x:31669,y:33182,varname:node_7458,prsc:2|A-9792-OUT,B-5567-OUT;n:type:ShaderForge.SFN_Slider,id:5567,x:31143,y:33410,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_5567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.01;n:type:ShaderForge.SFN_Clamp01,id:9390,x:32026,y:33197,varname:node_9390,prsc:2|IN-1106-OUT;n:type:ShaderForge.SFN_Power,id:1106,x:31856,y:33251,varname:node_1106,prsc:2|VAL-7458-OUT,EXP-6905-OUT;n:type:ShaderForge.SFN_Slider,id:6905,x:31506,y:33473,ptovrint:False,ptlb:power,ptin:_power,varname:node_6905,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:10;proporder:7241-3551-5567-6905;pass:END;sub:END;*/

Shader "Shader Forge/NoFog" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_3551 ("node_3551", Color) = (1,0,0,1)
        _scale ("scale", Range(0, 0.01)) = 0
        _power ("power", Range(0, 10)) = 3
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _node_3551;
            uniform float _scale;
            uniform float _power;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float node_9792 = distance(i.posWorld.rgb,_WorldSpaceCameraPos);
                float3 emissive = lerp(_Color.rgb,_node_3551.rgb,saturate(pow((node_9792*_scale),_power)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
