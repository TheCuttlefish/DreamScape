using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class OnPause : MonoBehaviour {

	public Canvas menu;
	private bool fadeIn = false;
	private float fadeInSpeed = 0.2f;

	void Awake () {
		GetComponent<CanvasGroup> ().alpha = 0;
	}

	void Start () {
		fadeIn = true;
	}

	public void ShowPause () {
		GetComponent<CanvasGroup> ().interactable = true;
		fadeIn = true;
	}

	public void ShowMenu () {
		Instantiate (menu, transform.position, Quaternion.identity);
		GetComponent<CanvasGroup> ().alpha = 0;
	}

	public void Update () {
		if (fadeIn) {
			if (GetComponent<CanvasGroup> ().alpha < 0.15f) {
				GetComponent<CanvasGroup> ().alpha += fadeInSpeed * Time.deltaTime;
			} else {
				fadeIn = false;
			}

		}
	}
}