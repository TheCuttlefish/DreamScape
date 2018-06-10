using System.Collections;
using UnityEngine;

[ExecuteInEditMode]
public class ScreenEffect : MonoBehaviour {

	[Range (0.0f, 1.0f)]
	public float transition;
	[Range (0.0f, 1.0f)]
	public float warpSpeed;
	public bool uvWarp;
	private Material material;

	// Creates a private material used to the effect
	void Awake () {

		material = new Material (Shader.Find ("Shader Forge/Overlay"));

	}

	// Postprocess the image
	void OnRenderImage (RenderTexture source, RenderTexture destination) {
		if (transition == 0) {
			Graphics.Blit (source, destination);
			return;
		}
		material.SetFloat ("_rotationspeed", warpSpeed);
		material.SetFloat ("_amount", transition);

		material.SetFloat ("_hueSlide", uvWarpFloat ());
		Graphics.Blit (source, destination, material);
	}

	float uvWarpFloat () {

		if (uvWarp) return 1;
		else return 0;
	}

}