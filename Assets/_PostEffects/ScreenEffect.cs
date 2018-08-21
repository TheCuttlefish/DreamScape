using System.Collections;
using UnityEngine;

[ExecuteInEditMode]
public class ScreenEffect : MonoBehaviour {

	public bool debug = false;
	[Range (0.0f, 1.0f)]
	public float transition;
	public ScreenWarp screenWarp;
	private Material material;
	private GameObject player;

	// Creates a private material used to the effect
	void Awake () {

		player = GameObject.Find ("Player");
		material = new Material (Shader.Find ("Shader Forge/Overlay"));

		material.SetTexture ("_MainTex", screenWarp.screenMap);
		material.SetTexture ("_uv_distortion", screenWarp.noiseMap);
		material.SetColor ("_fadeColour", screenWarp.fadeColour);
	}

	void Update () {
		CheckDistance ();
	}

	float newTransValue;
///this should be somewhere else!!
	void CheckDistance () {
		float dist = Vector3.Distance (player.transform.position, Vector3.zero);

		if (dist < 125) {
			newTransValue = 0.0001f;
		}
		if (dist > 125 && dist < 170) {
			newTransValue = screenWarp.transitionEnterValue;
		}
		if (dist > 170 && dist < 179) {
			newTransValue = screenWarp.transitionExitValue; 
		}
		if (dist > 180) {
			//end the stage
		}
		if (!debug)
			transition -= (transition - newTransValue) / 50;
	}

	// Postprocess the image
	void OnRenderImage (RenderTexture source, RenderTexture destination) {
		if (transition == 0) {
			Graphics.Blit (source, destination);
			return;
		}

		material.SetFloat ("_amount", transition);
		material.SetFloat ("_fadeAmount", screenWarp.fade);
		//uv distortion
		material.SetFloat ("_hueAmount", screenWarp.uvWarp);

		//rotation
		if (screenWarp.rotation) material.SetFloat ("_rotationspeed", screenWarp.rotationSpeed);
		else material.SetFloat ("_rotationspeed", 0);

		Graphics.Blit (source, destination, material);
	}

}