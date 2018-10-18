// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:2,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:False,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:False,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.7215686,fgcg:0.9058824,fgcb:1,fgca:1,fgde:0.005,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:33191,y:32914,varname:node_4013,prsc:2|diff-988-OUT,emission-8219-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:32034,y:32539,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:6257,x:32519,y:33225,ptovrint:False,ptlb:emission,ptin:_emission,varname:node_6257,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1794872,max:1;n:type:ShaderForge.SFN_Multiply,id:4435,x:32530,y:32711,varname:node_4435,prsc:2|A-1304-RGB,B-598-OUT,C-5460-RGB;n:type:ShaderForge.SFN_Posterize,id:598,x:32127,y:32764,varname:node_598,prsc:2|IN-9994-OUT,STPS-2376-OUT;n:type:ShaderForge.SFN_Slider,id:2376,x:31751,y:33064,ptovrint:False,ptlb:posturise num,ptin:_posturisenum,varname:node_2376,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:10,max:10;n:type:ShaderForge.SFN_Dot,id:9994,x:31830,y:32820,varname:node_9994,prsc:2,dt:0|A-1906-OUT,B-1925-OUT;n:type:ShaderForge.SFN_LightVector,id:1906,x:31472,y:32616,varname:node_1906,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:1925,x:31428,y:32841,prsc:2,pt:False;n:type:ShaderForge.SFN_Tex2d,id:5460,x:32127,y:32957,ptovrint:False,ptlb:node_5460,ptin:_node_5460,varname:node_5460,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:ca3d0db3a1b1c61469d85fa4553a7e28,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2dAsset,id:2675,x:31447,y:33279,ptovrint:False,ptlb:glyphs,ptin:_glyphs,varname:node_2675,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:e306c411300fe1f46afb1a9179e887ea,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1488,x:31661,y:33207,varname:node_1488,prsc:2,tex:e306c411300fe1f46afb1a9179e887ea,ntxv:0,isnm:False|UVIN-3307-UVOUT,TEX-2675-TEX;n:type:ShaderForge.SFN_Add,id:988,x:32773,y:32940,varname:node_988,prsc:2|A-4435-OUT,B-8655-OUT;n:type:ShaderForge.SFN_Multiply,id:8655,x:32493,y:33037,varname:node_8655,prsc:2|A-7869-RGB,B-6509-OUT;n:type:ShaderForge.SFN_Color,id:7869,x:32296,y:33006,ptovrint:False,ptlb:glyphColour,ptin:_glyphColour,varname:node_7869,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:6074,x:31447,y:33469,ptovrint:False,ptlb:node_6074,ptin:_node_6074,varname:node_6074,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-28-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3307,x:31447,y:33111,varname:node_3307,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ComponentMask,id:7699,x:31649,y:33362,varname:node_7699,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6074-RGB;n:type:ShaderForge.SFN_Panner,id:28,x:31188,y:33477,varname:node_28,prsc:2,spu:1,spv:0|UVIN-5492-UVOUT,DIST-9122-OUT;n:type:ShaderForge.SFN_Multiply,id:6509,x:32063,y:33207,varname:node_6509,prsc:2|A-1488-RGB,B-3123-OUT;n:type:ShaderForge.SFN_TexCoord,id:5492,x:30880,y:33427,varname:node_5492,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3123,x:31879,y:33362,varname:node_3123,prsc:2|A-7699-OUT,B-6192-OUT;n:type:ShaderForge.SFN_Slider,id:6192,x:31447,y:33664,ptovrint:False,ptlb:noise power,ptin:_noisepower,varname:node_6192,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7689637,max:1;n:type:ShaderForge.SFN_Multiply,id:9122,x:30880,y:33624,varname:node_9122,prsc:2|A-8533-T,B-53-OUT;n:type:ShaderForge.SFN_Time,id:8533,x:30632,y:33624,varname:node_8533,prsc:2;n:type:ShaderForge.SFN_Slider,id:53,x:30553,y:33852,ptovrint:False,ptlb:speed,ptin:_speed,varname:node_53,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4914582,max:1;n:type:ShaderForge.SFN_Add,id:8219,x:32866,y:33118,varname:node_8219,prsc:2|A-8655-OUT,B-6257-OUT;proporder:1304-6257-2376-5460-2675-7869-6074-6192-53;pass:END;sub:END;*/

Shader "Shader Forge/limestoneGlyphs" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _emission ("emission", Range(0, 1)) = 0.1794872
        _posturisenum ("posturise num", Range(0, 10)) = 10
        _node_5460 ("node_5460", 2D) = "white" {}
        _glyphs ("glyphs", 2D) = "white" {}
        _glyphColour ("glyphColour", Color) = (1,0,0,1)
        _node_6074 ("node_6074", 2D) = "white" {}
        _noisepower ("noise power", Range(0, 1)) = 0.7689637
        _speed ("speed", Range(0, 1)) = 0.4914582
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float _emission;
            uniform float _posturisenum;
            uniform sampler2D _node_5460; uniform float4 _node_5460_ST;
            uniform sampler2D _glyphs; uniform float4 _glyphs_ST;
            uniform float4 _glyphColour;
            uniform sampler2D _node_6074; uniform float4 _node_6074_ST;
            uniform float _noisepower;
            uniform float _speed;
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
                float4 _node_5460_var = tex2D(_node_5460,TRANSFORM_TEX(i.uv0, _node_5460));
                float4 node_1488 = tex2D(_glyphs,TRANSFORM_TEX(i.uv0, _glyphs));
                float4 node_8533 = _Time;
                float2 node_28 = (i.uv0+(node_8533.g*_speed)*float2(1,0));
                float4 _node_6074_var = tex2D(_node_6074,TRANSFORM_TEX(node_28, _node_6074));
                float3 node_8655 = (_glyphColour.rgb*(node_1488.rgb*float3((_node_6074_var.rgb.rg*_noisepower),0.0)));
                float3 diffuseColor = ((_Color.rgb*floor(dot(lightDirection,i.normalDir) * _posturisenum) / (_posturisenum - 1)*_node_5460_var.rgb)+node_8655);
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
////// Emissive:
                float3 emissive = (node_8655+_emission);
/// Final Color:
                float3 finalColor = diffuse + emissive;
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _Color;
            uniform float _emission;
            uniform float _posturisenum;
            uniform sampler2D _node_5460; uniform float4 _node_5460_ST;
            uniform sampler2D _glyphs; uniform float4 _glyphs_ST;
            uniform float4 _glyphColour;
            uniform sampler2D _node_6074; uniform float4 _node_6074_ST;
            uniform float _noisepower;
            uniform float _speed;
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
                float4 _node_5460_var = tex2D(_node_5460,TRANSFORM_TEX(i.uv0, _node_5460));
                float4 node_1488 = tex2D(_glyphs,TRANSFORM_TEX(i.uv0, _glyphs));
                float4 node_8533 = _Time;
                float2 node_28 = (i.uv0+(node_8533.g*_speed)*float2(1,0));
                float4 _node_6074_var = tex2D(_node_6074,TRANSFORM_TEX(node_28, _node_6074));
                float3 node_8655 = (_glyphColour.rgb*(node_1488.rgb*float3((_node_6074_var.rgb.rg*_noisepower),0.0)));
                float3 diffuseColor = ((_Color.rgb*floor(dot(lightDirection,i.normalDir) * _posturisenum) / (_posturisenum - 1)*_node_5460_var.rgb)+node_8655);
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
