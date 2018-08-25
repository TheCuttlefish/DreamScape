using System.Collections;
using UnityEngine;

[ExecuteInEditMode]
public class TransitionEffect : MonoBehaviour {

	[Range (0.0f, 10.0f)]
	public float value;
	private Material material;

	// Creates a private material used to the effect
	void Awake () {

		material = new Material (Shader.Find ("Shader Forge/kaleidoscope"));

		//material.SetTexture ("_MainTex", screenWarp.screenMap);
		//material.SetTexture ("_uv_distortion", screenWarp.noiseMap);
		//material.SetColor ("_fadeColour", screenWarp.fadeColour);
	}

	// Postprocess the image
	void OnRenderImage (RenderTexture source, RenderTexture destination) {

		Graphics.Blit (source, destination);

		material.SetFloat ("_value", value);

		Graphics.Blit (source, destination, material);
	}

}