using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class MenuSettings : MonoBehaviour {

	private ScreenEffect cam;
	private Slider blueLightSlider;
	public SettingsComponent gameSettings;

	public Text fpsText;

	private float alphaSpeed = 2f;
	private bool fadeOut = false;
	private bool fadeIn = false;
	private GameObject pauseMenu;

	public void Remove () {
		fadeIn = false;
		fadeOut = true;
	}

	void Awake () {

		//
		pauseMenu = GameObject.Find ("PauseCanvas");
		GetComponent<CanvasGroup> ().alpha = 0;
		fadeIn = true;
		//

		cam = GameObject.Find ("Cam").GetComponent<ScreenEffect> ();

		blueLightSlider = transform.Find ("BlueLightSlider").GetComponent<Slider> ();

		blueLightSlider.value = gameSettings.blueLightControl;
		blueLightSlider.onValueChanged.AddListener (delegate { ValueChangeCheck (); });
	}

	public void WarpDream () {
		cam.FadeOutLevel ();
		Remove ();
	}


	public void GoToLevel (string levelName) {
		cam.FadeOutLevel (levelName);
		Remove ();

	}

	void Update () {
		fpsText.text = "FPS: " + (int) (1.0f / Time.smoothDeltaTime);
		Fading ();
	}

	void Fading () {
		if (fadeIn) {
			if (GetComponent<CanvasGroup> ().alpha < 1) {
				GetComponent<CanvasGroup> ().alpha += alphaSpeed * Time.deltaTime;
			} else {
				fadeIn = false;
			}
		}

		if (fadeOut) {
			if (GetComponent<CanvasGroup> ().alpha > 0) {
				GetComponent<CanvasGroup> ().alpha -= alphaSpeed * Time.deltaTime;
			} else {
				pauseMenu.GetComponent<OnPause> ().ShowPause ();
				Destroy (gameObject);
			}
		}
	}

	public void ValueChangeCheck () {
		gameSettings.blueLightControl = blueLightSlider.value;
	}
}