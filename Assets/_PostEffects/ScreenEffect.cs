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
	private GameObject player;

	// Creates a private material used to the effect
	void Awake () {

		player = GameObject.Find ("Player");
		material = new Material (Shader.Find ("Shader Forge/Overlay"));

	}

	void Update () {
		CheckDistance ();
	}

	float newTransValue;

	void CheckDistance () {
		float dist = Vector3.Distance (player.transform.position, Vector3.zero);

		if (dist < 145) {
			newTransValue = 0f;
		}
		if (dist > 145 && dist < 170) {
			newTransValue = 0.01f;
		}
		if (dist > 170 && dist < 179) {
			newTransValue = 0.2f;
		}
		if (dist > 180) {
			//end the stage
		}

		transition -= (transition - newTransValue) / 50;
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