﻿using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

[ExecuteInEditMode]
public class ScreenEffect : MonoBehaviour {

	public bool debug = false;
	[Range (0.0f, 1.0f)]
	public float transition;
	public ScreenWarp screenWarp;
	private Material m_material;
	private GameObject player;
	private bool fadeOnStart = true;
	private bool fadeOnExit = false;

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
	}

	void Fade () {

		if (fadeOnStart) {
			if (screenWarp.fade > 0.006f) {
				screenWarp.fade -= 0.006f;
			} else {
				screenWarp.fade = 0;
				fadeOnStart = false;
			}
		}

		if (fadeOnExit) {
			screenWarp.fade += 0.006f;
			if (screenWarp.fade > 1) {
				SceneManager.LoadScene (1);
			}
		}
	}

	float newTransValue;
	///this should be somewhere else!!
	void CheckDistance () {
		float dist = Vector3.Distance (player.transform.position, Vector3.zero);

		if (dist < 125) {
			newTransValue = 0.005f;
		}
		if (dist > 125 && dist < 170) {
			newTransValue = screenWarp.transitionEnterValue;
		}
		if (dist > 170 && dist < 179) {
			newTransValue = screenWarp.transitionExitValue;
		}
		if (dist > 175) {
			fadeOnExit = true;
			//end the stage
		}
		if (!debug)
			transition -= (transition - newTransValue) / 50;
	}

	// Postprocess the image
	void OnRenderImage (RenderTexture source, RenderTexture destination) {

		
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