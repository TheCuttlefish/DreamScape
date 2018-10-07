using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
public class CanvasGroupFadeIn : MonoBehaviour {

	// Use this for initialization

	float canvasAlpha = 0;
	bool fadeIn = true;
	bool fadeOut = false;
	void Awake () {

		transform.GetComponent<CanvasGroup> ().alpha = 0;

	}

	public void FadeOut () {
		fadeOut = true;
	}
	// Update is called once per frame
	void Update () {

		if (fadeIn) {
			if (canvasAlpha < 1) {
				canvasAlpha += 0.006f;
			} else {
				fadeIn = false;
			}
		}

		if (fadeOut) {
			if (canvasAlpha > 0) {
				canvasAlpha -= 0.006f;
			} else {
				SceneManager.LoadScene ("Transition");
				fadeOut = false;
			}
		}

		transform.GetComponent<CanvasGroup> ().alpha = canvasAlpha;
	}
}