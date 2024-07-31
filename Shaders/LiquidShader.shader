// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.04,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|diff-7312-OUT,normal-5964-RGB,custl-7312-OUT,alpha-6551-OUT,clip-4383-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:30936,y:32263,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:5964,x:32440,y:32391,ptovrint:True,ptlb:Normal Map,ptin:_BumpMap,varname:_BumpMap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Step,id:4383,x:32234,y:33190,varname:node_4383,prsc:2|A-1713-OUT,B-7921-OUT;n:type:ShaderForge.SFN_Slider,id:7921,x:31898,y:33256,ptovrint:False,ptlb:Fill,ptin:_Fill,varname:node_7921,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_FaceSign,id:5601,x:31148,y:32433,varname:node_5601,prsc:2,fstp:0;n:type:ShaderForge.SFN_Color,id:7904,x:30936,y:32433,ptovrint:False,ptlb:SurfaceColor,ptin:_SurfaceColor,varname:node_7904,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.2720588,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Lerp,id:6663,x:31330,y:32260,varname:node_6663,prsc:2|A-6665-RGB,B-7904-RGB,T-5601-VFACE;n:type:ShaderForge.SFN_Slider,id:4092,x:30815,y:32651,ptovrint:False,ptlb:FresnelPower,ptin:_FresnelPower,varname:node_4092,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:5;n:type:ShaderForge.SFN_Color,id:7338,x:31173,y:32774,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_7338,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:8153,x:31332,y:32630,varname:node_8153,prsc:2|A-1205-OUT,B-7338-RGB;n:type:ShaderForge.SFN_Fresnel,id:1205,x:31173,y:32630,varname:node_1205,prsc:2|EXP-4092-OUT;n:type:ShaderForge.SFN_Add,id:7312,x:31589,y:32399,varname:node_7312,prsc:2|A-6663-OUT,B-8153-OUT;n:type:ShaderForge.SFN_Slider,id:3556,x:29880,y:33334,ptovrint:False,ptlb:RotationX,ptin:_RotationX,varname:node_3556,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Code,id:8279,x:30264,y:33189,varname:node_8279,prsc:2,code:LwAvACAAcgBvAHQAYQB0AGUAIABQAG8AcwAgAHYAZQBjAHQAbwByACAAZgBvAHIAIABBAG4AZwBsAGUAIAAoAHIAYQBkAGkAYQBuAHMAKQAgAGEAcgBvAHUAbgBkACAAQQB4AGkAcwAKAC8ALwAgAGMAYQBsAGMAIAByAG8AdABhAHQAaQBvAG4AIABtAGEAdAByAGkAeAAsACAAdABoAGUAbgAgAG0AdQBsAHQAaQBwAGwAeQAgAHcAaQB0AGgAIABQAG8AcwAgAHYAZQBjAHQAbwByAAoACgBmAGwAbwBhAHQAIABjACwAIABzADsADQAKAHMAaQBuAGMAbwBzACgAQQBuAGcAbABlACwAIABzACwAIABjACkAOwANAAoADQAKAGYAbABvAGEAdAAgAHQAIAA9ACAAMQAgAC0AIABjADsADQAKAGYAbABvAGEAdAAgAHgAIAA9ACAAQQB4AGkAcwAuAHgAOwANAAoAZgBsAG8AYQB0ACAAeQAgAD0AIABBAHgAaQBzAC4AeQA7AA0ACgBmAGwAbwBhAHQAIAB6ACAAPQAgAEEAeABpAHMALgB6ADsADQAKAA0ACgBmAGwAbwBhAHQAMwB4ADMAIAByAG8AdABNACAAPQAgAGYAbABvAGEAdAAzAHgAMwAoAA0ACgAgACAAIAAgAHQAIAAqACAAeAAgACoAIAB4ACAAKwAgAGMALAAgACAAIAAgACAAIAB0ACAAKgAgAHgAIAAqACAAeQAgAC0AIABzACAAKgAgAHoALAAgACAAdAAgACoAIAB4ACAAKgAgAHoAIAArACAAcwAgACoAIAB5ACwADQAKACAAIAAgACAAdAAgACoAIAB4ACAAKgAgAHkAIAArACAAcwAgACoAIAB6ACwAIAAgAHQAIAAqACAAeQAgACoAIAB5ACAAKwAgAGMALAAgACAAIAAgACAAIAB0ACAAKgAgAHkAIAAqACAAegAgAC0AIABzACAAKgAgAHgALAANAAoAIAAgACAAIAB0ACAAKgAgAHgAIAAqACAAegAgAC0AIABzACAAKgAgAHkALAAgACAAdAAgACoAIAB5ACAAKgAgAHoAIAArACAAcwAgACoAIAB4ACwAIAAgAHQAIAAqACAAegAgACoAIAB6ACAAKwAgAGMADQAKACkAOwANAAoACgByAGUAdAB1AHIAbgAgAG0AdQBsACgAcgBvAHQATQAsACAAUABvAHMAKQA7AA==,output:2,fname:RotationX,width:529,height:303,input:2,input:0,input:2,input_1_label:Pos,input_2_label:Angle,input_3_label:Axis|A-3812-OUT,B-3556-OUT,C-8522-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:8171,x:29674,y:33188,varname:node_8171,prsc:2;n:type:ShaderForge.SFN_ObjectPosition,id:9693,x:29674,y:33312,varname:node_9693,prsc:2;n:type:ShaderForge.SFN_Slider,id:4929,x:30918,y:33251,ptovrint:False,ptlb:RotationZ,ptin:_RotationZ,varname:_RotationX_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Subtract,id:3812,x:29880,y:33188,varname:node_3812,prsc:2|A-8171-XYZ,B-9693-XYZ;n:type:ShaderForge.SFN_Vector3,id:8522,x:30037,y:33403,varname:node_8522,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Code,id:1713,x:31328,y:33189,varname:node_1713,prsc:2,code:LwAvACAAcgBvAHQAYQB0AGUAIABQAG8AcwAgAHYAZQBjAHQAbwByACAAZgBvAHIAIABBAG4AZwBsAGUAIAAoAHIAYQBkAGkAYQBuAHMAKQAgAGEAcgBvAHUAbgBkACAAQQB4AGkAcwAKAC8ALwAgAGMAYQBsAGMAIAByAG8AdABhAHQAaQBvAG4AIABtAGEAdAByAGkAeAAsACAAdABoAGUAbgAgAG0AdQBsAHQAaQBwAGwAeQAgAHcAaQB0AGgAIABQAG8AcwAgAHYAZQBjAHQAbwByAAoACgBmAGwAbwBhAHQAIABjACwAIABzADsADQAKAHMAaQBuAGMAbwBzACgAQQBuAGcAbABlACwAIABzACwAIABjACkAOwANAAoADQAKAGYAbABvAGEAdAAgAHQAIAA9ACAAMQAgAC0AIABjADsADQAKAGYAbABvAGEAdAAgAHgAIAA9ACAAQQB4AGkAcwAuAHgAOwANAAoAZgBsAG8AYQB0ACAAeQAgAD0AIABBAHgAaQBzAC4AeQA7AA0ACgBmAGwAbwBhAHQAIAB6ACAAPQAgAEEAeABpAHMALgB6ADsADQAKAA0ACgBmAGwAbwBhAHQAMwB4ADMAIAByAG8AdABNACAAPQAgAGYAbABvAGEAdAAzAHgAMwAoAA0ACgAgACAAIAAgAHQAIAAqACAAeAAgACoAIAB4ACAAKwAgAGMALAAgACAAIAAgACAAIAB0ACAAKgAgAHgAIAAqACAAeQAgAC0AIABzACAAKgAgAHoALAAgACAAdAAgACoAIAB4ACAAKgAgAHoAIAArACAAcwAgACoAIAB5ACwADQAKACAAIAAgACAAdAAgACoAIAB4ACAAKgAgAHkAIAArACAAcwAgACoAIAB6ACwAIAAgAHQAIAAqACAAeQAgACoAIAB5ACAAKwAgAGMALAAgACAAIAAgACAAIAB0ACAAKgAgAHkAIAAqACAAegAgAC0AIABzACAAKgAgAHgALAANAAoAIAAgACAAIAB0ACAAKgAgAHgAIAAqACAAegAgAC0AIABzACAAKgAgAHkALAAgACAAdAAgACoAIAB5ACAAKgAgAHoAIAArACAAcwAgACoAIAB4ACwAIAAgAHQAIAAqACAAegAgACoAIAB6ACAAKwAgAGMADQAKACkAOwANAAoACgAvAC8AIABuAG8AdABpAGMAZQAgAHkACgByAGUAdAB1AHIAbgAgAG0AdQBsACgAcgBvAHQATQAsACAAUABvAHMAKQAuAHkAOwA=,output:0,fname:RotationZ,width:542,height:303,input:2,input:0,input:2,input_1_label:Pos,input_2_label:Angle,input_3_label:Axis|A-8279-OUT,B-4929-OUT,C-8546-OUT;n:type:ShaderForge.SFN_Vector3,id:8546,x:31075,y:33322,varname:node_8546,prsc:2,v1:1,v2:0,v3:0;n:type:ShaderForge.SFN_Set,id:2719,x:31330,y:32375,varname:ColorA,prsc:2|IN-6665-A;n:type:ShaderForge.SFN_Get,id:6551,x:32440,y:32549,varname:node_6551,prsc:2|IN-2719-OUT;proporder:6665-5964-7921-7904-4092-7338-3556-4929;pass:END;sub:END;*/

Shader "RSkoi/LiquidShader" {
    Properties {
        _Color ("Color", Color) = (1,0,0,1)
        _BumpMap ("Normal Map", 2D) = "bump" {}
        _Fill ("Fill", Range(-1, 1)) = 0
        _SurfaceColor ("SurfaceColor", Color) = (0.2720588,0,0,1)
        _FresnelPower ("FresnelPower", Range(0, 5)) = 2
        _FresnelColor ("FresnelColor", Color) = (1,0,0,1)
        _RotationX ("RotationX", Range(-1, 1)) = 0
        _RotationZ ("RotationZ", Range(-1, 1)) = 0
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform sampler2D _BumpMap; uniform float4 _BumpMap_ST;
            uniform float _Fill;
            uniform float4 _SurfaceColor;
            uniform float _FresnelPower;
            uniform float4 _FresnelColor;
            uniform float _RotationX;
            float3 RotationX( float3 Pos , float Angle , float3 Axis ){
            // rotate Pos vector for Angle (radians) around Axis
            // calc rotation matrix, then multiply with Pos vector
            
            float c, s;
            sincos(Angle, s, c);
            
            float t = 1 - c;
            float x = Axis.x;
            float y = Axis.y;
            float z = Axis.z;
            
            float3x3 rotM = float3x3(
                t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
                t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
                t * x * z - s * y,  t * y * z + s * x,  t * z * z + c
            );
            
            return mul(rotM, Pos);
            }
            
            uniform float _RotationZ;
            float RotationZ( float3 Pos , float Angle , float3 Axis ){
            // rotate Pos vector for Angle (radians) around Axis
            // calc rotation matrix, then multiply with Pos vector
            
            float c, s;
            sincos(Angle, s, c);
            
            float t = 1 - c;
            float x = Axis.x;
            float y = Axis.y;
            float z = Axis.z;
            
            float3x3 rotM = float3x3(
                t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
                t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
                t * x * z - s * y,  t * y * z + s * x,  t * z * z + c
            );
            
            // notice y
            return mul(rotM, Pos).y;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _BumpMap_var = UnpackNormal(tex2D(_BumpMap,TRANSFORM_TEX(i.uv0, _BumpMap)));
                float3 normalLocal = _BumpMap_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                clip(step(RotationZ( RotationX( (i.posWorld.rgb-objPos.rgb) , _RotationX , float3(0,0,1) ) , _RotationZ , float3(1,0,0) ),_Fill) - 0.5);
////// Lighting:
                float3 node_7312 = (lerp(_Color.rgb,_SurfaceColor.rgb,isFrontFace)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelPower)*_FresnelColor.rgb));
                float3 finalColor = node_7312;
                float ColorA = _Color.a;
                fixed4 finalRGBA = fixed4(finalColor,ColorA);
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
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Fill;
            uniform float _RotationX;
            float3 RotationX( float3 Pos , float Angle , float3 Axis ){
            // rotate Pos vector for Angle (radians) around Axis
            // calc rotation matrix, then multiply with Pos vector
            
            float c, s;
            sincos(Angle, s, c);
            
            float t = 1 - c;
            float x = Axis.x;
            float y = Axis.y;
            float z = Axis.z;
            
            float3x3 rotM = float3x3(
                t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
                t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
                t * x * z - s * y,  t * y * z + s * x,  t * z * z + c
            );
            
            return mul(rotM, Pos);
            }
            
            uniform float _RotationZ;
            float RotationZ( float3 Pos , float Angle , float3 Axis ){
            // rotate Pos vector for Angle (radians) around Axis
            // calc rotation matrix, then multiply with Pos vector
            
            float c, s;
            sincos(Angle, s, c);
            
            float t = 1 - c;
            float x = Axis.x;
            float y = Axis.y;
            float z = Axis.z;
            
            float3x3 rotM = float3x3(
                t * x * x + c,      t * x * y - s * z,  t * x * z + s * y,
                t * x * y + s * z,  t * y * y + c,      t * y * z - s * x,
                t * x * z - s * y,  t * y * z + s * x,  t * z * z + c
            );
            
            // notice y
            return mul(rotM, Pos).y;
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                clip(step(RotationZ( RotationX( (i.posWorld.rgb-objPos.rgb) , _RotationX , float3(0,0,1) ) , _RotationZ , float3(1,0,0) ),_Fill) - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
