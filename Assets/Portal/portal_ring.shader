// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:1,fgcg:0.9686275,fgcb:0.8313726,fgca:1,fgde:0.05,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-6815-OUT,spec-358-OUT,gloss-1813-OUT,emission-3284-OUT,alpha-1951-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31921,y:32588,varname:_MainTex,prsc:2,tex:9a2282d0b63fea64dbafa068d6d6e0ea,ntxv:0,isnm:False|UVIN-689-OUT,TEX-2413-TEX;n:type:ShaderForge.SFN_Slider,id:358,x:32250,y:32780,ptovrint:False,ptlb:Metallic,ptin:_Metallic,varname:node_358,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3058153,max:1;n:type:ShaderForge.SFN_Slider,id:1813,x:32250,y:32882,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.8878447,max:1;n:type:ShaderForge.SFN_Rotator,id:8552,x:31657,y:32477,varname:node_8552,prsc:2|UVIN-3119-UVOUT,SPD-680-OUT;n:type:ShaderForge.SFN_TexCoord,id:3119,x:30903,y:32440,varname:node_3119,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:5295,x:31921,y:32774,varname:node_5295,prsc:2,tex:9a2282d0b63fea64dbafa068d6d6e0ea,ntxv:0,isnm:False|UVIN-4019-UVOUT,TEX-2413-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2413,x:31657,y:32797,ptovrint:False,ptlb:ring texture,ptin:_ringtexture,varname:node_2413,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:9a2282d0b63fea64dbafa068d6d6e0ea,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Time,id:2004,x:31082,y:32743,varname:node_2004,prsc:2;n:type:ShaderForge.SFN_Rotator,id:4019,x:31657,y:32621,varname:node_4019,prsc:2|UVIN-3119-UVOUT,SPD-7728-OUT;n:type:ShaderForge.SFN_Slider,id:7728,x:30925,y:32887,ptovrint:False,ptlb:ring 2 speed,ptin:_ring2speed,varname:node_7728,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.1,cur:0.07606838,max:1;n:type:ShaderForge.SFN_Multiply,id:3284,x:32226,y:32538,varname:node_3284,prsc:2|A-7736-RGB,B-5295-RGB;n:type:ShaderForge.SFN_Slider,id:680,x:30925,y:32601,ptovrint:False,ptlb:ring 1 speed,ptin:_ring1speed,varname:node_680,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-0.1,cur:0.04444445,max:1;n:type:ShaderForge.SFN_Multiply,id:1951,x:32183,y:32954,varname:node_1951,prsc:2|A-7736-A,B-5295-A;n:type:ShaderForge.SFN_Tex2d,id:3861,x:31214,y:32280,ptovrint:False,ptlb:node_3861,ptin:_node_3861,varname:node_3861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d766ed6f6b60f174faa47797189cfd00,ntxv:0,isnm:False|UVIN-8151-UVOUT;n:type:ShaderForge.SFN_Panner,id:8151,x:30993,y:32237,varname:node_8151,prsc:2,spu:0,spv:-0.1|UVIN-7977-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7977,x:30757,y:32206,varname:node_7977,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:302,x:31461,y:32297,varname:node_302,prsc:2|A-3861-R,B-3861-G;n:type:ShaderForge.SFN_Lerp,id:689,x:31909,y:32315,varname:node_689,prsc:2|A-302-OUT,B-8552-UVOUT,T-6796-OUT;n:type:ShaderForge.SFN_Slider,id:6796,x:31393,y:32441,ptovrint:False,ptlb:warp,ptin:_warp,varname:node_6796,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.95,cur:0.99,max:1;n:type:ShaderForge.SFN_Multiply,id:6815,x:32527,y:32456,varname:node_6815,prsc:2|A-2327-RGB,B-3284-OUT;n:type:ShaderForge.SFN_Color,id:2327,x:32160,y:32315,ptovrint:False,ptlb:Main_colour,ptin:_Main_colour,varname:node_2327,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8068966,c3:0,c4:1;proporder:358-1813-2413-7728-680-3861-6796-2327;pass:END;sub:END;*/

Shader "Shader Forge/portal_ring" {
    Properties {
        _Metallic ("Metallic", Range(0, 1)) = 0.3058153
        _Gloss ("Gloss", Range(0, 1)) = 0.8878447
        _ringtexture ("ring texture", 2D) = "white" {}
        _ring2speed ("ring 2 speed", Range(-0.1, 1)) = 0.07606838
        _ring1speed ("ring 1 speed", Range(-0.1, 1)) = 0.04444445
        _node_3861 ("node_3861", 2D) = "white" {}
        _warp ("warp", Range(0.95, 1)) = 0.99
        _Main_colour ("Main_colour", Color) = (1,0.8068966,0,1)
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _ringtexture; uniform float4 _ringtexture_ST;
            uniform float _ring2speed;
            uniform float _ring1speed;
            uniform sampler2D _node_3861; uniform float4 _node_3861_ST;
            uniform float _warp;
            uniform float4 _Main_colour;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                UNITY_FOG_COORDS(7)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD8;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #elif UNITY_SHOULD_SAMPLE_SH
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                #if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMin[0] = unity_SpecCube0_BoxMin;
                    d.boxMin[1] = unity_SpecCube1_BoxMin;
                #endif
                #if UNITY_SPECCUBE_BOX_PROJECTION
                    d.boxMax[0] = unity_SpecCube0_BoxMax;
                    d.boxMax[1] = unity_SpecCube1_BoxMax;
                    d.probePosition[0] = unity_SpecCube0_ProbePosition;
                    d.probePosition[1] = unity_SpecCube1_ProbePosition;
                #endif
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Metallic,_Metallic,_Metallic);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float4 node_872 = _Time;
                float2 node_8151 = (i.uv0+node_872.g*float2(0,-0.1));
                float4 _node_3861_var = tex2D(_node_3861,TRANSFORM_TEX(node_8151, _node_3861));
                float node_8552_ang = node_872.g;
                float node_8552_spd = _ring1speed;
                float node_8552_cos = cos(node_8552_spd*node_8552_ang);
                float node_8552_sin = sin(node_8552_spd*node_8552_ang);
                float2 node_8552_piv = float2(0.5,0.5);
                float2 node_8552 = (mul(i.uv0-node_8552_piv,float2x2( node_8552_cos, -node_8552_sin, node_8552_sin, node_8552_cos))+node_8552_piv);
                float2 node_689 = lerp(float2(_node_3861_var.r,_node_3861_var.g),node_8552,_warp);
                float4 _MainTex = tex2D(_ringtexture,TRANSFORM_TEX(node_689, _ringtexture));
                float node_4019_ang = node_872.g;
                float node_4019_spd = _ring2speed;
                float node_4019_cos = cos(node_4019_spd*node_4019_ang);
                float node_4019_sin = sin(node_4019_spd*node_4019_ang);
                float2 node_4019_piv = float2(0.5,0.5);
                float2 node_4019 = (mul(i.uv0-node_4019_piv,float2x2( node_4019_cos, -node_4019_sin, node_4019_sin, node_4019_cos))+node_4019_piv);
                float4 node_5295 = tex2D(_ringtexture,TRANSFORM_TEX(node_4019, _ringtexture));
                float3 node_3284 = (_MainTex.rgb*node_5295.rgb);
                float3 diffuseColor = (_Main_colour.rgb*node_3284);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = node_3284;
/// Final Color:
                float3 finalColor = diffuse + specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,(_MainTex.a*node_5295.a));
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _ringtexture; uniform float4 _ringtexture_ST;
            uniform float _ring2speed;
            uniform float _ring1speed;
            uniform sampler2D _node_3861; uniform float4 _node_3861_ST;
            uniform float _warp;
            uniform float4 _Main_colour;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                LIGHTING_COORDS(7,8)
                UNITY_FOG_COORDS(9)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
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
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Metallic,_Metallic,_Metallic);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 node_2267 = _Time;
                float2 node_8151 = (i.uv0+node_2267.g*float2(0,-0.1));
                float4 _node_3861_var = tex2D(_node_3861,TRANSFORM_TEX(node_8151, _node_3861));
                float node_8552_ang = node_2267.g;
                float node_8552_spd = _ring1speed;
                float node_8552_cos = cos(node_8552_spd*node_8552_ang);
                float node_8552_sin = sin(node_8552_spd*node_8552_ang);
                float2 node_8552_piv = float2(0.5,0.5);
                float2 node_8552 = (mul(i.uv0-node_8552_piv,float2x2( node_8552_cos, -node_8552_sin, node_8552_sin, node_8552_cos))+node_8552_piv);
                float2 node_689 = lerp(float2(_node_3861_var.r,_node_3861_var.g),node_8552,_warp);
                float4 _MainTex = tex2D(_ringtexture,TRANSFORM_TEX(node_689, _ringtexture));
                float node_4019_ang = node_2267.g;
                float node_4019_spd = _ring2speed;
                float node_4019_cos = cos(node_4019_spd*node_4019_ang);
                float node_4019_sin = sin(node_4019_spd*node_4019_ang);
                float2 node_4019_piv = float2(0.5,0.5);
                float2 node_4019 = (mul(i.uv0-node_4019_piv,float2x2( node_4019_cos, -node_4019_sin, node_4019_sin, node_4019_cos))+node_4019_piv);
                float4 node_5295 = tex2D(_ringtexture,TRANSFORM_TEX(node_4019, _ringtexture));
                float3 node_3284 = (_MainTex.rgb*node_5295.rgb);
                float3 diffuseColor = (_Main_colour.rgb*node_3284);
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * (_MainTex.a*node_5295.a),0);
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
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Metallic;
            uniform float _Gloss;
            uniform sampler2D _ringtexture; uniform float4 _ringtexture_ST;
            uniform float _ring2speed;
            uniform float _ring1speed;
            uniform sampler2D _node_3861; uniform float4 _node_3861_ST;
            uniform float _warp;
            uniform float4 _Main_colour;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_7867 = _Time;
                float2 node_8151 = (i.uv0+node_7867.g*float2(0,-0.1));
                float4 _node_3861_var = tex2D(_node_3861,TRANSFORM_TEX(node_8151, _node_3861));
                float node_8552_ang = node_7867.g;
                float node_8552_spd = _ring1speed;
                float node_8552_cos = cos(node_8552_spd*node_8552_ang);
                float node_8552_sin = sin(node_8552_spd*node_8552_ang);
                float2 node_8552_piv = float2(0.5,0.5);
                float2 node_8552 = (mul(i.uv0-node_8552_piv,float2x2( node_8552_cos, -node_8552_sin, node_8552_sin, node_8552_cos))+node_8552_piv);
                float2 node_689 = lerp(float2(_node_3861_var.r,_node_3861_var.g),node_8552,_warp);
                float4 _MainTex = tex2D(_ringtexture,TRANSFORM_TEX(node_689, _ringtexture));
                float node_4019_ang = node_7867.g;
                float node_4019_spd = _ring2speed;
                float node_4019_cos = cos(node_4019_spd*node_4019_ang);
                float node_4019_sin = sin(node_4019_spd*node_4019_ang);
                float2 node_4019_piv = float2(0.5,0.5);
                float2 node_4019 = (mul(i.uv0-node_4019_piv,float2x2( node_4019_cos, -node_4019_sin, node_4019_sin, node_4019_cos))+node_4019_piv);
                float4 node_5295 = tex2D(_ringtexture,TRANSFORM_TEX(node_4019, _ringtexture));
                float3 node_3284 = (_MainTex.rgb*node_5295.rgb);
                o.Emission = node_3284;
                
                float3 diffColor = (_Main_colour.rgb*node_3284);
                float3 specColor = float3(_Metallic,_Metallic,_Metallic);
                float roughness = 1.0 - _Gloss;
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
