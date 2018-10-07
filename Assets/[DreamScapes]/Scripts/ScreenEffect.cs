using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

[ExecuteInEditMode]
public class ScreenEffect : MonoBehaviour {

	[Range (0.0f, 1.0f)]
	public float transition;
	public ScreenWarp screenWarp;
	public SettingsComponent settings;

	private Material m_material;
	private GameObject player;
	private bool fadeOnStart = true;
	private bool fadeOnExit = false;
	private float transitionSpeed = 0.002f;

	private bool exitLevel = false;

	// Creates a private material used to the effect
	void Awake () {

		player = GameObject.Find ("Player");
		m_material = new Material (Shader.Find ("Shader Forge/Overlay"));

		m_material.SetTexture ("_MainTex", screenWarp.screenMap);
		m_material.SetTexture ("_uv_distortion", screenWarp.noiseMap);
		m_material.SetColor ("_fadeColour", screenWarp.fadeColour);
		screenWarp.fade = 1;
	}

	void Update () {
		CheckDistance ();
		Fade ();

		if (exitLevel) {
			newTransValue = screenWarp.transitionExitValue;
			transition -= (transition - newTransValue) / 200; //transition effect speed
			fadeOnExit = true;
		}
	}

	public void FadeOutLevel () {
		exitLevel = true;
	}
	void Fade () {

		if (fadeOnStart) {
			if (screenWarp.fade > transitionSpeed) {
				screenWarp.fade -= transitionSpeed;
			} else {
				screenWarp.fade = 0;
				fadeOnStart = false;
			}
		}

		if (fadeOnExit) {
			screenWarp.fade += transitionSpeed;
			if (screenWarp.fade > 1) {
				SceneManager.LoadScene ("Transition");
			}
		}
	}

	float newTransValue;
	///this should be somewhere else!!
	void CheckDistance () {
		float dist = Vector3.Distance (player.transform.position, Vector3.zero);

		if (dist < 170) {
			newTransValue = 0.01f;
			transition -= (transition - newTransValue) / 200; //transition effect speed
		}
		if (dist > 170 && dist < 178) {
			newTransValue = screenWarp.transitionEnterValue;
			transition -= (transition - newTransValue) / 50; //transition effect speed
		}
		if (dist > 178) {
			newTransValue = screenWarp.transitionExitValue;
			transition -= (transition - newTransValue) / 200; //transition effect speed
			fadeOnExit = true;
		}

	}

	// Postprocess the image
	void OnRenderImage (RenderTexture source, RenderTexture destination) {

		m_material.SetFloat ("_orangeValue", settings.blueLightControl);

		m_material.SetFloat ("_amount", transition);
		m_material.SetFloat ("_fadeAmount", screenWarp.fade);
		//uv distortion
		m_material.SetFloat ("_hueAmount", screenWarp.uvWarp);

		//rotation
		if (screenWarp.rotation) m_material.SetFloat ("_rotationspeed", screenWarp.rotationSpeed);
		else m_material.SetFloat ("_rotationspeed", 0);

		Graphics.Blit (source, destination, m_material);
	}

}