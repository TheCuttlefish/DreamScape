using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WayPoint : MonoBehaviour {

	Camera cam;
	WayPointSystem main;
	bool appear = false;
	float alpha = 0;

	void Start () {
		main = GameObject.Find ("WayPointSystem").GetComponent<WayPointSystem> ();
		cam = Camera.main;

	}

	void Update () {
		FadeIn ();
		transform.LookAt (cam.transform.position, Vector3.up);
	}
	public void Show () {
		GetComponent<Renderer> ().enabled = true;
		GetComponent<Collider> ().enabled = true;
		appear = true;
	}

	public void Hide () {
		GetComponent<Renderer> ().enabled = false;
		GetComponent<Collider> ().enabled = false;
		alpha = 0;
	}

	void OnMouseDown () {
		main.UpdateActivePoint ();
		//GetComponent<Renderer> ().material.color = new Color (0.85f, 0.06f, 0.69f, 1.00f);
	}

	void FadeIn () {
		if (appear) {
			if (alpha < 1) {
				alpha += 0.5f * Time.deltaTime;
				GetComponent<Renderer> ().material.color = new Color (1, 1, 1, alpha);
			} else appear = false;
		}
	}
}