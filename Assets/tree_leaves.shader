// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:1,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.8666667,fgcg:0.9019608,fgcb:1,fgca:1,fgde:0.005,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:32719,y:32712,varname:node_4013,prsc:2|diff-4135-OUT,emission-475-OUT,alpha-7436-OUT,clip-7885-OUT,olwid-2465-OUT,olcol-1910-RGB,voffset-6909-OUT;n:type:ShaderForge.SFN_Tex2d,id:748,x:31608,y:32946,ptovrint:False,ptlb:noise_tex,ptin:_noise_tex,varname:node_748,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:7885,x:31965,y:33003,varname:node_7885,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1|IN-748-R;n:type:ShaderForge.SFN_Lerp,id:666,x:32228,y:32687,varname:node_666,prsc:2|A-7243-RGB,B-2381-RGB,T-7453-OUT;n:type:ShaderForge.SFN_Color,id:7243,x:31796,y:32474,ptovrint:False,ptlb:node_7243,ptin:_node_7243,varname:node_7243,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4068966,c2:1,c3:0,c4:1;n:type:ShaderForge.SFN_Color,id:2381,x:31783,y:32642,ptovrint:False,ptlb:node_2381,ptin:_node_2381,varname:node_2381,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1406187,c2:0.3455882,c3:0,c4:1;n:type:ShaderForge.SFN_Posterize,id:7453,x:32002,y:32812,varname:node_7453,prsc:2|IN-748-R,STPS-183-OUT;n:type:ShaderForge.SFN_Slider,id:183,x:31503,y:32830,ptovrint:False,ptlb:noise,ptin:_noise,varname:node_183,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:5,max:5;n:type:ShaderForge.SFN_Multiply,id:4135,x:32442,y:32640,varname:node_4135,prsc:2|A-1604-RGB,B-666-OUT;n:type:ShaderForge.SFN_LightColor,id:1604,x:32192,y:32547,varname:node_1604,prsc:2;n:type:ShaderForge.SFN_Multiply,id:475,x:32520,y:32783,varname:node_475,prsc:2|A-4135-OUT,B-8153-OUT;n:type:ShaderForge.SFN_Slider,id:8153,x:32200,y:32857,ptovrint:False,ptlb:Emmision,ptin:_Emmision,varname:node_8153,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5470086,max:1;n:type:ShaderForge.SFN_Slider,id:7436,x:32228,y:32930,ptovrint:False,ptlb:alpha,ptin:_alpha,varname:node_7436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Multiply,id:6909,x:32530,y:33150,varname:node_6909,prsc:2|A-6740-OUT,B-5782-OUT,C-3477-OUT,D-1785-XYZ;n:type:ShaderForge.SFN_NormalVector,id:5782,x:32154,y:33216,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:3477,x:32255,y:33363,varname:node_3477,prsc:2|A-7021-OUT,B-8340-OUT;n:type:ShaderForge.SFN_Time,id:7136,x:31888,y:33363,varname:node_7136,prsc:2;n:type:ShaderForge.SFN_Sin,id:7021,x:32084,y:33363,varname:node_7021,prsc:2|IN-7136-T;n:type:ShaderForge.SFN_Multiply,id:6740,x:32306,y:33084,varname:node_6740,prsc:2|A-7885-OUT,B-8564-OUT;n:type:ShaderForge.SFN_Slider,id:8564,x:31809,y:33197,ptovrint:False,ptlb:remap multiplier,ptin:_remapmultiplier,varname:node_8564,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3,max:3;n:type:ShaderForge.SFN_FragmentPosition,id:1785,x:32255,y:33501,varname:node_1785,prsc:2;n:type:ShaderForge.SFN_Slider,id:2465,x:32363,y:33041,ptovrint:False,ptlb:outline thickness,ptin:_outlinethickness,varname:node_2465,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1111111,max:1;n:type:ShaderForge.SFN_Color,id:1910,x:32494,y:33326,ptovrint:False,ptlb:outline colour,ptin:_outlinecolour,varname:node_1910,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1263185,c2:0.3897059,c3:0,c4:1;n:type:ShaderForge.SFN_Vector1,id:8340,x:32046,y:33535,varname:node_8340,prsc:2,v1:0.001;proporder:748-7243-2381-183-8153-7436-8564-2465-1910;pass:END;sub:END;*/

Shader "Shader Forge/tree_leaves" {
    Properties {
        _noise_tex ("noise_tex", 2D) = "white" {}
        _node_7243 ("node_7243", Color) = (0.4068966,1,0,1)
        _node_2381 ("node_2381", Color) = (0.1406187,0.3455882,0,1)
        _noise ("noise", Range(2, 5)) = 5
        _Emmision ("Emmision", Range(0, 1)) = 0.5470086
        _alpha ("alpha", Range(0, 1)) = 1
        _remapmultiplier ("remap multiplier", Range(0, 3)) = 3
        _outlinethickness ("outline thickness", Range(0, 1)) = 0.1111111
        _outlinecolour ("outline colour", Color) = (0.1263185,0.3897059,0,1)
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
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _noise_tex; uniform float4 _noise_tex_ST;
            uniform float _remapmultiplier;
            uniform float _outlinethickness;
            uniform float4 _outlinecolour;
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
                float4 _noise_tex_var = tex2Dlod(_noise_tex,float4(TRANSFORM_TEX(o.uv0, _noise_tex),0.0,0));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                float4 node_7136 = _Time;
                v.vertex.xyz += ((node_7885*_remapmultiplier)*v.normal*(sin(node_7136.g)*0.001)*mul(unity_ObjectToWorld, v.vertex).rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*_outlinethickness,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _noise_tex_var = tex2D(_noise_tex,TRANSFORM_TEX(i.uv0, _noise_tex));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                clip(node_7885 - 0.5);
                return fixed4(_outlinecolour.rgb,0);
            }
            ENDCG
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
            uniform float4 _LightColor0;
            uniform sampler2D _noise_tex; uniform float4 _noise_tex_ST;
            uniform float4 _node_7243;
            uniform float4 _node_2381;
            uniform float _noise;
            uniform float _Emmision;
            uniform float _alpha;
            uniform float _remapmultiplier;
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
                float4 _noise_tex_var = tex2Dlod(_noise_tex,float4(TRANSFORM_TEX(o.uv0, _noise_tex),0.0,0));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                float4 node_7136 = _Time;
                v.vertex.xyz += ((node_7885*_remapmultiplier)*v.normal*(sin(node_7136.g)*0.001)*mul(unity_ObjectToWorld, v.vertex).rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _noise_tex_var = tex2D(_noise_tex,TRANSFORM_TEX(i.uv0, _noise_tex));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                clip(node_7885 - 0.5);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 node_4135 = (_LightColor0.rgb*lerp(_node_7243.rgb,_node_2381.rgb,floor(_noise_tex_var.r * _noise) / (_noise - 1)));
                float3 diffuseColor = node_4135;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_4135*_Emmision);
/// Final Color:
                float3 finalColor = diffuse + emissive;
                fixed4 finalRGBA = fixed4(finalColor,_alpha);
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _noise_tex; uniform float4 _noise_tex_ST;
            uniform float4 _node_7243;
            uniform float4 _node_2381;
            uniform float _noise;
            uniform float _Emmision;
            uniform float _alpha;
            uniform float _remapmultiplier;
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
                float4 _noise_tex_var = tex2Dlod(_noise_tex,float4(TRANSFORM_TEX(o.uv0, _noise_tex),0.0,0));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                float4 node_7136 = _Time;
                v.vertex.xyz += ((node_7885*_remapmultiplier)*v.normal*(sin(node_7136.g)*0.001)*mul(unity_ObjectToWorld, v.vertex).rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _noise_tex_var = tex2D(_noise_tex,TRANSFORM_TEX(i.uv0, _noise_tex));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                clip(node_7885 - 0.5);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 node_4135 = (_LightColor0.rgb*lerp(_node_7243.rgb,_node_2381.rgb,floor(_noise_tex_var.r * _noise) / (_noise - 1)));
                float3 diffuseColor = node_4135;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor * _alpha,0);
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
            uniform sampler2D _noise_tex; uniform float4 _noise_tex_ST;
            uniform float _remapmultiplier;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 _noise_tex_var = tex2Dlod(_noise_tex,float4(TRANSFORM_TEX(o.uv0, _noise_tex),0.0,0));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                float4 node_7136 = _Time;
                v.vertex.xyz += ((node_7885*_remapmultiplier)*v.normal*(sin(node_7136.g)*0.001)*mul(unity_ObjectToWorld, v.vertex).rgb);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _noise_tex_var = tex2D(_noise_tex,TRANSFORM_TEX(i.uv0, _noise_tex));
                float node_7885 = (_noise_tex_var.r*1.0+0.0);
                clip(node_7885 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
