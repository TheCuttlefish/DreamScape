using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

	public float moveForward = 0;

	bool accelerate = false;
	// Update is called once per frame

	public float maxSpeed = 0.01f;

	public void MoveForward () {
		accelerate = true;
	}

	public void MoveForwardStop () {
		accelerate = false;
	}

	void MovementControl () {
		if (Input.GetKeyUp (KeyCode.LeftShift) || Input.GetAxis ("RightTrigger") < -.5f) {
			accelerate = !accelerate;
		}

	}
	void Movement () {

		if (accelerate) {
			moveForward -= (moveForward - maxSpeed) / 0.1f * Time.deltaTime;
		} else {
			moveForward -= (moveForward - 0) / 0.5f * Time.deltaTime;
		}

		transform.Translate (0, 0, moveForward, Space.Self);
		transform.Rotate (Input.GetAxis ("Vertical") * 1.0f, 0, 0);
		transform.Rotate (0, Input.GetAxis ("Horizontal") * 1.0f, 0, Space.World);
		//correction
		transform.Rotate (Vector3.Dot (Vector3.up, transform.forward) / 10, 0, Vector3.Dot (Vector3.up, -transform.right) / 2);
		//transform.Rotate (0,Vector3.Dot (Vector3.forward, transform.right), 0); // - code for left right correction
	}

	void Update () {
		MovementControl ();
	}

	void FixedUpdate () {
		Movement ();

	}
}