Shader "TheChase/GUI/Tint"
{ 
	Properties {
		_Color ("Color (A = Opacity)", Color) = (1,1,1,1) 
		_MainTex ("Texture (A = Transparency)", 2D) = "" 
	} 
	 
	SubShader {
		//Tags {Queue = Transparent}
		ZWrite Off
		Blend SrcAlpha OneMinusSrcAlpha
	 
		Pass { 
			SetTexture[_MainTex] {
				ConstantColor [_Color]
				Combine texture * constant
			} 
		} 
	}
}