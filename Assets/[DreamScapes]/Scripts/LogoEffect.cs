using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LogoEffect : MonoBehaviour {

	[Range (0, 1)]
	public float logoAlpha;

	string transitionState = "start";
	float waitTimer = 5;
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
				logoAlpha -= 0.2f * Time.deltaTime;
			} else {
				transitionState = "wait";
			}
		}

		if (transitionState == "wait") {
			if (waitTimer > 0) {
				waitTimer -= 1*Time.deltaTime;
			} else {
				transitionState = "fadeOut";
			}
		}

		if (transitionState == "fadeOut") {
			if (logoAlpha < 0.90f) {
				logoAlpha += 0.1f * Time.deltaTime;
			} else {
				//Destroy(gameObject);
			}
		}

		rend.material.SetFloat ("_transition", logoAlpha);
	}
}