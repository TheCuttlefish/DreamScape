// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.8666667,fgcg:0.9019608,fgcb:1,fgca:1,fgde:0.005,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:34111,y:33204,varname:node_2865,prsc:2|emission-4676-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31682,y:33134,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32738,y:33142,cmnt:Refract here,varname:node_8397,prsc:2|IN-8282-OUT;n:type:ShaderForge.SFN_Relay,id:4676,x:33527,y:33338,cmnt:Modify color here,varname:node_4676,prsc:2|IN-3076-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:32662,y:33346,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32964,y:33289,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Tex2d,id:4443,x:30545,y:32657,ptovrint:False,ptlb:uv_distortion,ptin:_uv_distortion,varname:node_4443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1281006c40832664d97413e3ce018ead,ntxv:0,isnm:False|UVIN-6628-UVOUT;n:type:ShaderForge.SFN_Lerp,id:8282,x:31939,y:33134,varname:node_8282,prsc:2|A-6681-OUT,B-4219-UVOUT,T-24-OUT;n:type:ShaderForge.SFN_Slider,id:185,x:31345,y:33291,ptovrint:False,ptlb:amount,ptin:_amount,varname:node_185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_TexCoord,id:1705,x:29784,y:32421,varname:node_1705,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:6628,x:30185,y:32503,varname:node_6628,prsc:2|UVIN-1705-UVOUT,SPD-8674-OUT;n:type:ShaderForge.SFN_RemapRange,id:24,x:31682,y:33291,varname:node_24,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-185-OUT;n:type:ShaderForge.SFN_Slider,id:8674,x:29650,y:32620,ptovrint:False,ptlb:rotation speed,ptin:_rotationspeed,varname:node_8674,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5190524,max:1;n:type:ShaderForge.SFN_RgbToHsv,id:7852,x:30830,y:32903,varname:node_7852,prsc:2|IN-4443-RGB;n:type:ShaderForge.SFN_HsvToRgb,id:4390,x:31228,y:32853,varname:node_4390,prsc:2|H-7852-HOUT,S-8993-OUT,V-7852-VOUT;n:type:ShaderForge.SFN_Time,id:631,x:30830,y:32750,varname:node_631,prsc:2;n:type:ShaderForge.SFN_Sin,id:8993,x:31004,y:32762,varname:node_8993,prsc:2|IN-631-T;n:type:ShaderForge.SFN_Lerp,id:3076,x:33279,y:33366,varname:node_3076,prsc:2|A-7542-RGB,B-3284-RGB,T-5591-OUT;n:type:ShaderForge.SFN_Color,id:3284,x:32863,y:33435,ptovrint:False,ptlb:fadeColour,ptin:_fadeColour,varname:node_3284,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:5591,x:32837,y:33613,ptovrint:False,ptlb:fadeAmount,ptin:_fadeAmount,varname:node_5591,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Lerp,id:6681,x:31418,y:32519,varname:node_6681,prsc:2|A-4443-RGB,B-4390-OUT,T-8632-OUT;n:type:ShaderForge.SFN_Slider,id:8632,x:31025,y:32587,ptovrint:False,ptlb:hueAmount,ptin:_hueAmount,varname:node_8632,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;proporder:4430-4443-185-8674-3284-5591-8632;pass:END;sub:END;*/

Shader "Shader Forge/Overlay" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _uv_distortion ("uv_distortion", 2D) = "white" {}
        _amount ("amount", Range(0, 1)) = 1
        _rotationspeed ("rotation speed", Range(0, 1)) = 0.5190524
        _fadeColour ("fadeColour", Color) = (1,1,1,1)
        _fadeAmount ("fadeAmount", Range(0, 1)) = 0
        _hueAmount ("hueAmount", Range(0, 1)) = 0
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _uv_distortion; uniform float4 _uv_distortion_ST;
            uniform float _amount;
            uniform float _rotationspeed;
            uniform float4 _fadeColour;
            uniform float _fadeAmount;
            uniform float _hueAmount;
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
                float4 node_6335 = _Time;
                float node_6628_ang = node_6335.g;
                float node_6628_spd = _rotationspeed;
                float node_6628_cos = cos(node_6628_spd*node_6628_ang);
                float node_6628_sin = sin(node_6628_spd*node_6628_ang);
                float2 node_6628_piv = float2(0.5,0.5);
                float2 node_6628 = (mul(i.uv0-node_6628_piv,float2x2( node_6628_cos, -node_6628_sin, node_6628_sin, node_6628_cos))+node_6628_piv);
                float4 _uv_distortion_var = tex2D(_uv_distortion,TRANSFORM_TEX(node_6628, _uv_distortion));
                float4 node_7852_k = float4(0.0, -1.0 / 3.0, 2.0 / 3.0, -1.0);
                float4 node_7852_p = lerp(float4(float4(_uv_distortion_var.rgb,0.0).zy, node_7852_k.wz), float4(float4(_uv_distortion_var.rgb,0.0).yz, node_7852_k.xy), step(float4(_uv_distortion_var.rgb,0.0).z, float4(_uv_distortion_var.rgb,0.0).y));
                float4 node_7852_q = lerp(float4(node_7852_p.xyw, float4(_uv_distortion_var.rgb,0.0).x), float4(float4(_uv_distortion_var.rgb,0.0).x, node_7852_p.yzx), step(node_7852_p.x, float4(_uv_distortion_var.rgb,0.0).x));
                float node_7852_d = node_7852_q.x - min(node_7852_q.w, node_7852_q.y);
                float node_7852_e = 1.0e-10;
                float3 node_7852 = float3(abs(node_7852_q.z + (node_7852_q.w - node_7852_q.y) / (6.0 * node_7852_d + node_7852_e)), node_7852_d / (node_7852_q.x + node_7852_e), node_7852_q.x);;
                float4 node_631 = _Time;
                float3 node_8397 = lerp(lerp(_uv_distortion_var.rgb,(lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(node_7852.r+float3(0.0,-1.0/3.0,1.0/3.0)))-1),sin(node_631.g))*node_7852.b),_hueAmount),float3(i.uv0,0.0),(_amount*-1.0+1.0)); // Refract here
                float4 node_1672 = tex2D(_MainTex,TRANSFORM_TEX(node_8397, _MainTex));
                float3 emissive = lerp(node_1672.rgb,_fadeColour.rgb,_fadeAmount);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
