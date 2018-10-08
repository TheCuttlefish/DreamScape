using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InGameMenu : MonoBehaviour {

		private float alphaSpeed = 2f;
		private bool fadeOut = false;
		private bool fadeIn = false;
		private GameObject pauseMenu;

		public void Awake () {
			pauseMenu = GameObject.Find ("PauseCanvas");
			GetComponent<CanvasGroup> ().alpha = 0;
		}

		public void Start(){
			fadeIn = true;
		}

		public void Remove () {
			fadeIn = false;
			fadeOut = true;
		}

		void Update () {

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
		}