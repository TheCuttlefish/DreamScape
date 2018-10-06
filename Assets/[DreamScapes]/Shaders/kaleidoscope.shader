// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32663,y:32290,varname:node_2865,prsc:2|emission-4676-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:30026,y:32466,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32065,y:32370,cmnt:Refract here,varname:node_8397,prsc:2|IN-3354-OUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32424,y:32386,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31986,y:32544,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32204,y:32386,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Time,id:2752,x:29669,y:32274,varname:node_2752,prsc:2;n:type:ShaderForge.SFN_Frac,id:3354,x:31880,y:32370,varname:node_3354,prsc:2|IN-6912-OUT;n:type:ShaderForge.SFN_Cos,id:2575,x:29884,y:32274,varname:node_2575,prsc:2|IN-2752-TSL;n:type:ShaderForge.SFN_Abs,id:4339,x:30063,y:32274,varname:node_4339,prsc:2|IN-2575-OUT;n:type:ShaderForge.SFN_Vector1,id:2984,x:30063,y:32169,varname:node_2984,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Lerp,id:5727,x:30281,y:32149,varname:node_5727,prsc:2|A-1081-OUT,B-2984-OUT,T-4339-OUT;n:type:ShaderForge.SFN_Multiply,id:1535,x:30504,y:32332,varname:node_1535,prsc:2|A-5727-OUT,B-7227-OUT;n:type:ShaderForge.SFN_Slider,id:5755,x:30614,y:32623,ptovrint:False,ptlb:value,ptin:_value,varname:node_5755,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.367733,max:10;n:type:ShaderForge.SFN_RemapRange,id:7227,x:30243,y:32466,varname:node_7227,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4219-UVOUT;n:type:ShaderForge.SFN_Normalize,id:6790,x:31003,y:32419,varname:node_6790,prsc:2|IN-1535-OUT;n:type:ShaderForge.SFN_Lerp,id:9594,x:31207,y:32584,varname:node_9594,prsc:2|A-6790-OUT,B-1535-OUT,T-5755-OUT;n:type:ShaderForge.SFN_Add,id:6912,x:31676,y:32370,varname:node_6912,prsc:2|A-9594-OUT,B-1535-OUT;n:type:ShaderForge.SFN_Vector1,id:1081,x:30063,y:32084,varname:node_1081,prsc:2,v1:0.5;proporder:4430-5755;pass:END;sub:END;*/

Shader "Shader Forge/kaleidoscope" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _value ("value", Range(0, 10)) = 4.367733
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _value;
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
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2752 = _Time;
                float2 node_1535 = (lerp(0.5,0.1,abs(cos(node_2752.r)))*(i.uv0*2.0+-1.0));
                float2 node_8397 = frac((lerp(normalize(node_1535),node_1535,_value)+node_1535)); // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 emissive = node_1672.rgb;
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
