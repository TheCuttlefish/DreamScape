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
        // No culling or depth
		Cull Off ZWrite Off ZTest Always
        Pass {
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
   
            #include "UnityCG.cginc"

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
                float4 node_1131 = _Time;
                float node_6628_ang = node_1131.g;
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
}
