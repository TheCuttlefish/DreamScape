using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Movement : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}

	// Update is called once per frame

	float forwardSpeed = 0;
	float maxSpeed = 0.1f;
	bool touch = false;

	Vector2 mousePosition;
	float rotationC = 4.0f; //rotation coefficient
	void FixedUpdate () {

		Moving ();
		Rotating ();

	}
	void Update () {
		if (Input.GetMouseButtonDown (0))
			touch = true;
		if (Input.GetMouseButtonUp (0))
			touch = false;
	}


	
	void Moving () {

		if (touch)
			forwardSpeed -= (forwardSpeed - maxSpeed) / 10;
		else {
			forwardSpeed -= (forwardSpeed - 0) / 50;

		}
		transform.Translate (0, 0, forwardSpeed);
	}

	void Rotating () {
		mousePosition = new Vector2 (Camera.main.ScreenToViewportPoint (Input.mousePosition).x - 0.5f,
			Camera.main.ScreenToViewportPoint (Input.mousePosition).y - 0.5f);
		Vector3 ControlledRot = new Vector3 (-mousePosition.y * rotationC, mousePosition.x * rotationC, Vector3.Dot (Vector3.up, -transform.right));
		Vector3 AutoRot = new Vector3 (Vector3.Dot (Vector3.up, transform.forward) / 10, 0, Vector3.Dot (Vector3.up, -transform.right) / 10);

		transform.Rotate (Vector3.Lerp (ControlledRot, AutoRot, 0)); //uses controllled only, auto is not used so far

		//if (GetComponent<Rigidbody> ().velocity.magnitude > 0)
		//	GetComponent<Rigidbody> ().velocity = Vector3.zero;
	}
}