// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32934,y:32697,varname:node_3138,prsc:2|emission-8789-OUT,alpha-8661-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31968,y:32368,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Distance,id:7180,x:31907,y:32747,varname:node_7180,prsc:2|A-7030-XYZ,B-6940-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:7030,x:31683,y:32686,varname:node_7030,prsc:2;n:type:ShaderForge.SFN_Vector3,id:6940,x:31683,y:32811,varname:node_6940,prsc:2,v1:0,v2:0,v3:0;n:type:ShaderForge.SFN_Lerp,id:8789,x:32523,y:32642,varname:node_8789,prsc:2|A-7241-RGB,B-9735-RGB,T-4261-OUT;n:type:ShaderForge.SFN_Color,id:9735,x:31968,y:32536,ptovrint:False,ptlb:node_9735,ptin:_node_9735,varname:node_9735,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:993,x:32151,y:32762,varname:node_993,prsc:2|A-7180-OUT,B-6734-OUT;n:type:ShaderForge.SFN_Slider,id:6734,x:31798,y:32953,ptovrint:False,ptlb:alpha amount,ptin:_alphaamount,varname:node_6734,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:0.1;n:type:ShaderForge.SFN_Clamp01,id:4261,x:32345,y:32751,varname:node_4261,prsc:2|IN-993-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8661,x:32537,y:32795,varname:node_8661,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-8789-OUT;proporder:7241-9735-6734;pass:END;sub:END;*/

Shader "Shader Forge/distanceTest" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _node_9735 ("node_9735", Color) = (0.5,0.5,0.5,1)
        _alphaamount ("alpha amount", Range(0, 0.1)) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float4 _node_9735;
            uniform float _alphaamount;
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
                float3 node_8789 = lerp(_Color.rgb,_node_9735.rgb,saturate((distance(i.posWorld.rgb,float3(0,0,0))*_alphaamount)));
                float3 emissive = node_8789;
                float3 finalColor = emissive;
                return fixed4(finalColor,node_8789.r);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
