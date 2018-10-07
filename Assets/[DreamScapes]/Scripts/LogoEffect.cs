using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogoEffect : MonoBehaviour {

	[Range (0, 1)]
	public float logoAlpha;

	string transitionState = "start";
	int waitTimer = 600;
	Renderer rend;
	void Awake () {
		logoAlpha = 1;
	}
	void Start () {
		rend = GetComponent<Renderer> ();
	}

	// Update is called once per frame
	void Update () {

		if (transitionState == "start") {
			if (logoAlpha > 0.1f) {
				logoAlpha -= 0.0005f;
			} else {
				transitionState = "wait";
			}
		}

		if (transitionState == "wait") {
			if (waitTimer > 0) {
				waitTimer--;
			} else {
				transitionState = "fadeOut";
			}
		}

		if (transitionState == "fadeOut") {
			if (logoAlpha < 0.90f) {
				logoAlpha += 0.0005f;
			} else {
				//Destroy(gameObject);
			}
		}

		rend.material.SetFloat ("_transition", logoAlpha);
	}
}