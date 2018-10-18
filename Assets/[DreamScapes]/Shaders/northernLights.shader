// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33821,y:32661,varname:node_3138,prsc:2|emission-8951-OUT,alpha-7283-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32216,y:32541,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Color,id:429,x:32216,y:32737,ptovrint:False,ptlb:Color2,ptin:_Color2,varname:node_429,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Lerp,id:8951,x:32776,y:32645,varname:node_8951,prsc:2|A-7241-RGB,B-429-RGB,T-4966-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:3801,x:30714,y:32716,varname:node_3801,prsc:2;n:type:ShaderForge.SFN_Multiply,id:747,x:31982,y:33043,varname:node_747,prsc:2|A-8848-OUT,B-3483-OUT;n:type:ShaderForge.SFN_Slider,id:3483,x:31484,y:33242,ptovrint:False,ptlb:mutliply,ptin:_mutliply,varname:node_3483,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ObjectPosition,id:7491,x:31180,y:33235,varname:node_7491,prsc:2;n:type:ShaderForge.SFN_Subtract,id:9315,x:31584,y:33003,varname:node_9315,prsc:2|A-7743-OUT,B-7491-XYZ;n:type:ShaderForge.SFN_ComponentMask,id:8848,x:31777,y:33003,varname:node_8848,prsc:2,cc1:1,cc2:-1,cc3:-1,cc4:-1|IN-9315-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7744,x:32444,y:33586,ptovrint:False,ptlb:aurora,ptin:_aurora,varname:node_7744,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:863a8abfd178e01499f378297c9d5f49,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8754,x:32601,y:33301,varname:node_8754,prsc:2,tex:863a8abfd178e01499f378297c9d5f49,ntxv:0,isnm:False|UVIN-2768-UVOUT,TEX-7744-TEX;n:type:ShaderForge.SFN_Add,id:7446,x:32442,y:32866,varname:node_7446,prsc:2|A-7919-OUT,B-4464-OUT;n:type:ShaderForge.SFN_Slider,id:7919,x:31893,y:32878,ptovrint:False,ptlb:move y up,ptin:_moveyup,varname:node_7919,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_Clamp01,id:4966,x:32642,y:32805,varname:node_4966,prsc:2|IN-7446-OUT;n:type:ShaderForge.SFN_OneMinus,id:9379,x:32905,y:32875,varname:node_9379,prsc:2|IN-4966-OUT;n:type:ShaderForge.SFN_Subtract,id:3124,x:33041,y:33004,varname:node_3124,prsc:2|A-9379-OUT,B-8754-R;n:type:ShaderForge.SFN_TexCoord,id:7008,x:32064,y:33299,varname:node_7008,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:2768,x:32306,y:33324,varname:node_2768,prsc:2,spu:0,spv:-1|UVIN-7008-UVOUT,DIST-6646-OUT;n:type:ShaderForge.SFN_Clamp01,id:751,x:33209,y:32957,varname:node_751,prsc:2|IN-3124-OUT;n:type:ShaderForge.SFN_Abs,id:4464,x:32265,y:32962,varname:node_4464,prsc:2|IN-747-OUT;n:type:ShaderForge.SFN_Cos,id:9501,x:31233,y:32863,varname:node_9501,prsc:2|IN-7315-OUT;n:type:ShaderForge.SFN_Add,id:7743,x:31419,y:32810,varname:node_7743,prsc:2|A-3801-XYZ,B-9501-OUT;n:type:ShaderForge.SFN_Multiply,id:7315,x:31079,y:32879,varname:node_7315,prsc:2|A-5395-OUT,B-8329-OUT;n:type:ShaderForge.SFN_Slider,id:8329,x:30680,y:32969,ptovrint:False,ptlb:coswave,ptin:_coswave,varname:node_8329,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4957265,max:1;n:type:ShaderForge.SFN_Multiply,id:7283,x:33410,y:33060,varname:node_7283,prsc:2|A-751-OUT,B-8621-OUT,C-7511-OUT;n:type:ShaderForge.SFN_Slider,id:8621,x:33017,y:33142,ptovrint:False,ptlb:alpha_power,ptin:_alpha_power,varname:node_8621,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5395,x:30908,y:32792,varname:node_5395,prsc:2|A-3801-X,B-4588-OUT;n:type:ShaderForge.SFN_Slider,id:4588,x:30521,y:32880,ptovrint:False,ptlb:cos multiplier,ptin:_cosmultiplier,varname:node_4588,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:10;n:type:ShaderForge.SFN_TexCoord,id:4635,x:32935,y:33301,varname:node_4635,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:5926,x:33347,y:33360,varname:node_5926,prsc:2|IN-1092-OUT;n:type:ShaderForge.SFN_Add,id:1092,x:33174,y:33360,varname:node_1092,prsc:2|A-4635-UVOUT,B-4403-OUT;n:type:ShaderForge.SFN_Vector2,id:4403,x:32951,y:33474,varname:node_4403,prsc:2,v1:-0.5,v2:-0.5;n:type:ShaderForge.SFN_OneMinus,id:5766,x:33557,y:33341,varname:node_5766,prsc:2|IN-5926-OUT;n:type:ShaderForge.SFN_Power,id:7511,x:33798,y:33331,varname:node_7511,prsc:2|VAL-5766-OUT,EXP-197-OUT;n:type:ShaderForge.SFN_Slider,id:197,x:33400,y:33607,ptovrint:False,ptlb:alpha length power,ptin:_alphalengthpower,varname:node_197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3544233,max:10;n:type:ShaderForge.SFN_Slider,id:9606,x:31907,y:33527,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_9606,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:10;n:type:ShaderForge.SFN_Multiply,id:6646,x:32239,y:33500,varname:node_6646,prsc:2|A-9606-OUT,B-1614-T;n:type:ShaderForge.SFN_Time,id:1614,x:32014,y:33656,varname:node_1614,prsc:2;proporder:7241-429-3483-7744-7919-8329-8621-4588-197-9606;pass:END;sub:END;*/

Shader "Shader Forge/northernLights" {
    Properties {
        _Color ("Color", Color) = (0.07843138,0.3921569,0.7843137,1)
        _Color2 ("Color2", Color) = (0.5,0.5,0.5,1)
        _mutliply ("mutliply", Range(0, 1)) = 1
        _aurora ("aurora", 2D) = "white" {}
        _moveyup ("move y up", Range(-10, 10)) = 0
        _coswave ("coswave", Range(0, 1)) = 0.4957265
        _alpha_power ("alpha_power", Range(0, 1)) = 0
        _cosmultiplier ("cos multiplier", Range(1, 10)) = 1
        _alphalengthpower ("alpha length power", Range(0, 10)) = 0.3544233
        _speed ("speed", Range(0, 10)) = 0.1
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
            uniform float4 _Color2;
            uniform float _mutliply;
            uniform sampler2D _aurora; uniform float4 _aurora_ST;
            uniform float _moveyup;
            uniform float _coswave;
            uniform float _alpha_power;
            uniform float _cosmultiplier;
            uniform float _alphalengthpower;
            uniform float _speed;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
////// Lighting:
////// Emissive:
                float node_4966 = saturate((_moveyup+abs((((i.posWorld.rgb+cos(((i.posWorld.r*_cosmultiplier)*_coswave)))-objPos.rgb).g*_mutliply))));
                float3 emissive = lerp(_Color.rgb,_Color2.rgb,node_4966);
                float3 finalColor = emissive;
                float4 node_1614 = _Time;
                float2 node_2768 = (i.uv0+(_speed*node_1614.g)*float2(0,-1));
                float4 node_8754 = tex2D(_aurora,TRANSFORM_TEX(node_2768, _aurora));
                return fixed4(finalColor,(saturate(((1.0 - node_4966)-node_8754.r))*_alpha_power*pow((1.0 - length((i.uv0+float2(-0.5,-0.5)))),_alphalengthpower)));
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
