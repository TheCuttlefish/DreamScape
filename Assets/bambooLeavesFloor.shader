// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33016,y:32635,varname:node_4013,prsc:2|diff-1550-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32107,y:32690,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8068964,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:8338,x:32408,y:32737,varname:node_8338,prsc:2|A-1304-RGB,B-8913-OUT;n:type:ShaderForge.SFN_Tex2d,id:7065,x:32072,y:32796,varname:node_7065,prsc:2,tex:29b5ade739ebc4043acc31936fef01a5,ntxv:0,isnm:False|UVIN-4278-OUT,TEX-497-TEX;n:type:ShaderForge.SFN_Color,id:5547,x:32046,y:32384,ptovrint:False,ptlb:bg,ptin:_bg,varname:node_5547,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.3455882,c3:0.3455882,c4:1;n:type:ShaderForge.SFN_Clamp01,id:1628,x:32585,y:32662,varname:node_1628,prsc:2|IN-8338-OUT;n:type:ShaderForge.SFN_Lerp,id:1550,x:32709,y:32520,varname:node_1550,prsc:2|A-5547-RGB,B-1628-OUT,T-2893-OUT;n:type:ShaderForge.SFN_Slider,id:2893,x:32185,y:32532,ptovrint:False,ptlb:lerp,ptin:_lerp,varname:node_2893,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4287949,max:1;n:type:ShaderForge.SFN_Tex2dAsset,id:497,x:31599,y:32571,ptovrint:False,ptlb:bamboo,ptin:_bamboo,varname:node_497,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:29b5ade739ebc4043acc31936fef01a5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:7045,x:32061,y:32952,varname:node_7045,prsc:2,tex:29b5ade739ebc4043acc31936fef01a5,ntxv:0,isnm:False|UVIN-6162-OUT,TEX-497-TEX;n:type:ShaderForge.SFN_TexCoord,id:547,x:31197,y:33009,varname:node_547,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:2468,x:32352,y:32933,varname:node_2468,prsc:2|A-7065-RGB,B-7045-RGB,C-2470-RGB;n:type:ShaderForge.SFN_Clamp01,id:8913,x:32510,y:32933,varname:node_8913,prsc:2|IN-2468-OUT;n:type:ShaderForge.SFN_Multiply,id:6162,x:31764,y:33014,varname:node_6162,prsc:2|A-1316-UVOUT,B-454-OUT;n:type:ShaderForge.SFN_Slider,id:454,x:31282,y:33187,ptovrint:False,ptlb:scale1,ptin:_scale1,varname:node_454,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1.903082,max:5;n:type:ShaderForge.SFN_Rotator,id:1316,x:31451,y:33009,varname:node_1316,prsc:2|UVIN-547-UVOUT,ANG-6053-OUT;n:type:ShaderForge.SFN_Vector1,id:6053,x:31150,y:33173,varname:node_6053,prsc:2,v1:23;n:type:ShaderForge.SFN_Tex2d,id:2470,x:32061,y:33175,varname:node_2470,prsc:2,tex:29b5ade739ebc4043acc31936fef01a5,ntxv:0,isnm:False|UVIN-8756-OUT,TEX-497-TEX;n:type:ShaderForge.SFN_Multiply,id:8756,x:31774,y:33200,varname:node_8756,prsc:2|A-7899-UVOUT,B-4197-OUT;n:type:ShaderForge.SFN_Rotator,id:7899,x:31473,y:33262,varname:node_7899,prsc:2|UVIN-547-UVOUT,ANG-3799-OUT;n:type:ShaderForge.SFN_Vector1,id:3799,x:31150,y:33330,varname:node_3799,prsc:2,v1:40;n:type:ShaderForge.SFN_Slider,id:4197,x:31316,y:33455,ptovrint:False,ptlb:scale2,ptin:_scale2,varname:node_4197,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1,max:5;n:type:ShaderForge.SFN_TexCoord,id:1142,x:31137,y:32725,varname:node_1142,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:4278,x:31599,y:32774,varname:node_4278,prsc:2|A-1142-UVOUT,B-7-OUT;n:type:ShaderForge.SFN_Slider,id:7,x:31105,y:32928,ptovrint:False,ptlb:scale0,ptin:_scale0,varname:node_7,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.1,cur:1,max:5;proporder:1304-5547-2893-497-454-4197-7;pass:END;sub:END;*/

Shader "Shader Forge/bambooLeavesFloor" {
    Properties {
        _Color ("Color", Color) = (1,0.8068964,0,1)
        _bg ("bg", Color) = (1,0.3455882,0.3455882,1)
        _lerp ("lerp", Range(0, 1)) = 0.4287949
        _bamboo ("bamboo", 2D) = "white" {}
        _scale1 ("scale1", Range(0.1, 5)) = 1.903082
        _scale2 ("scale2", Range(0.1, 5)) = 1
        _scale0 ("scale0", Range(0.1, 5)) = 1
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
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float4 _bg;
            uniform float _lerp;
            uniform sampler2D _bamboo; uniform float4 _bamboo_ST;
            uniform float _scale1;
            uniform float _scale2;
            uniform float _scale0;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float2 node_4278 = (i.uv0*_scale0);
                float4 node_7065 = tex2D(_bamboo,TRANSFORM_TEX(node_4278, _bamboo));
                float node_1316_ang = 23.0;
                float node_1316_spd = 1.0;
                float node_1316_cos = cos(node_1316_spd*node_1316_ang);
                float node_1316_sin = sin(node_1316_spd*node_1316_ang);
                float2 node_1316_piv = float2(0.5,0.5);
                float2 node_1316 = (mul(i.uv0-node_1316_piv,float2x2( node_1316_cos, -node_1316_sin, node_1316_sin, node_1316_cos))+node_1316_piv);
                float2 node_6162 = (node_1316*_scale1);
                float4 node_7045 = tex2D(_bamboo,TRANSFORM_TEX(node_6162, _bamboo));
                float node_7899_ang = 40.0;
                float node_7899_spd = 1.0;
                float node_7899_cos = cos(node_7899_spd*node_7899_ang);
                float node_7899_sin = sin(node_7899_spd*node_7899_ang);
                float2 node_7899_piv = float2(0.5,0.5);
                float2 node_7899 = (mul(i.uv0-node_7899_piv,float2x2( node_7899_cos, -node_7899_sin, node_7899_sin, node_7899_cos))+node_7899_piv);
                float2 node_8756 = (node_7899*_scale2);
                float4 node_2470 = tex2D(_bamboo,TRANSFORM_TEX(node_8756, _bamboo));
                float3 diffuseColor = lerp(_bg.rgb,saturate((_Color.rgb*saturate((node_7065.rgb+node_7045.rgb+node_2470.rgb)))),_lerp);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float4 _bg;
            uniform float _lerp;
            uniform sampler2D _bamboo; uniform float4 _bamboo_ST;
            uniform float _scale1;
            uniform float _scale2;
            uniform float _scale0;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float2 node_4278 = (i.uv0*_scale0);
                float4 node_7065 = tex2D(_bamboo,TRANSFORM_TEX(node_4278, _bamboo));
                float node_1316_ang = 23.0;
                float node_1316_spd = 1.0;
                float node_1316_cos = cos(node_1316_spd*node_1316_ang);
                float node_1316_sin = sin(node_1316_spd*node_1316_ang);
                float2 node_1316_piv = float2(0.5,0.5);
                float2 node_1316 = (mul(i.uv0-node_1316_piv,float2x2( node_1316_cos, -node_1316_sin, node_1316_sin, node_1316_cos))+node_1316_piv);
                float2 node_6162 = (node_1316*_scale1);
                float4 node_7045 = tex2D(_bamboo,TRANSFORM_TEX(node_6162, _bamboo));
                float node_7899_ang = 40.0;
                float node_7899_spd = 1.0;
                float node_7899_cos = cos(node_7899_spd*node_7899_ang);
                float node_7899_sin = sin(node_7899_spd*node_7899_ang);
                float2 node_7899_piv = float2(0.5,0.5);
                float2 node_7899 = (mul(i.uv0-node_7899_piv,float2x2( node_7899_cos, -node_7899_sin, node_7899_sin, node_7899_cos))+node_7899_piv);
                float2 node_8756 = (node_7899*_scale2);
                float4 node_2470 = tex2D(_bamboo,TRANSFORM_TEX(node_8756, _bamboo));
                float3 diffuseColor = lerp(_bg.rgb,saturate((_Color.rgb*saturate((node_7065.rgb+node_7045.rgb+node_2470.rgb)))),_lerp);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
