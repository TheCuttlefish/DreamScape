// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5294118,fgcg:0.8431373,fgcb:1,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32740,y:33254,varname:node_2865,prsc:2|emission-4676-OUT;n:type:ShaderForge.SFN_TexCoord,id:4219,x:31682,y:33134,cmnt:Default coordinates,varname:node_4219,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Relay,id:8397,x:32144,y:33134,cmnt:Refract here,varname:node_8397,prsc:2|IN-8282-OUT;n:type:ShaderForge.SFN_Relay,id:4676,x:32580,y:33299,cmnt:Modify color here,varname:node_4676,prsc:2|IN-7542-RGB;n:type:ShaderForge.SFN_Tex2dAsset,id:4430,x:31810,y:33448,ptovrint:False,ptlb:MainTex,ptin:_MainTex,cmnt:MainTex contains the color of the scene,varname:node_9933,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7542,x:32301,y:33299,varname:node_1672,prsc:2,ntxv:0,isnm:False|UVIN-8397-OUT,TEX-4430-TEX;n:type:ShaderForge.SFN_Tex2d,id:4443,x:31475,y:32810,ptovrint:False,ptlb:uv_distortion,ptin:_uv_distortion,varname:node_4443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:1281006c40832664d97413e3ce018ead,ntxv:0,isnm:False|UVIN-6628-UVOUT;n:type:ShaderForge.SFN_Lerp,id:8282,x:31939,y:33134,varname:node_8282,prsc:2|A-4390-OUT,B-4219-UVOUT,T-24-OUT;n:type:ShaderForge.SFN_Slider,id:185,x:31345,y:33291,ptovrint:False,ptlb:amount,ptin:_amount,varname:node_185,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5441796,max:1;n:type:ShaderForge.SFN_TexCoord,id:1705,x:30923,y:32776,varname:node_1705,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Rotator,id:6628,x:31306,y:32810,varname:node_6628,prsc:2|UVIN-1705-UVOUT,SPD-8674-OUT;n:type:ShaderForge.SFN_RemapRange,id:24,x:31682,y:33291,varname:node_24,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0.001|IN-185-OUT;n:type:ShaderForge.SFN_Slider,id:8674,x:30854,y:32997,ptovrint:False,ptlb:rotation speed,ptin:_rotationspeed,varname:node_8674,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_RgbToHsv,id:7852,x:31650,y:32810,varname:node_7852,prsc:2|IN-4443-RGB;n:type:ShaderForge.SFN_HsvToRgb,id:4390,x:31864,y:32810,varname:node_4390,prsc:2|H-8993-OUT,S-7852-SOUT,V-7852-VOUT;n:type:ShaderForge.SFN_Time,id:631,x:31475,y:32614,varname:node_631,prsc:2;n:type:ShaderForge.SFN_Sin,id:8993,x:31650,y:32633,varname:node_8993,prsc:2|IN-631-T;proporder:4430-4443-185-8674;pass:END;sub:END;*/

Shader "Shader Forge/Overlay" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _uv_distortion ("uv_distortion", 2D) = "white" {}
        _amount ("amount", Range(0, 1)) = 0.5441796
        _rotationspeed ("rotation speed", Range(0, 1)) = 0.5
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
                float4 node_631 = _Time;
                float4 node_1121 = _Time;
                float node_6628_ang = node_1121.g;
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
                float3 node_8397 = lerp((lerp(float3(1,1,1),saturate(3.0*abs(1.0-2.0*frac(sin(node_631.g)+float3(0.0,-1.0/3.0,1.0/3.0)))-1),node_7852.g)*node_7852.b),float3(i.uv0,0.0),(_amount*-0.999+1.0)); // Refract here
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
