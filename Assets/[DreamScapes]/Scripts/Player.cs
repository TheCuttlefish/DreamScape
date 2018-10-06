﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour {

	// Use this for initialization
	void Start () {

	}

	public float moveForward = 0;

	bool accelerate = false;
	// Update is called once per frame

	public float maxSpeed = 0.01f;

	void Movement () {

		if (Input.GetKey (KeyCode.LeftShift) || Input.GetAxis ("RightTrigger") < -.5f) {

			accelerate = true;

		} else {
			accelerate = false;

		}

		if (accelerate) {
			moveForward -= (moveForward - maxSpeed) / 10;
		} else {
			moveForward -= (moveForward - 0) / 50;
		}

		transform.Translate (0, 0, moveForward, Space.Self);
		transform.Rotate (Input.GetAxis ("Vertical") * 1.0f, 0, 0);
		transform.Rotate (0, Input.GetAxis ("Horizontal") * 1.0f, 0, Space.World);
		//correction
		transform.Rotate (Vector3.Dot (Vector3.up, transform.forward) / 10, 0, Vector3.Dot (Vector3.up, -transform.right) / 2);
		//transform.Rotate (0,Vector3.Dot (Vector3.forward, transform.right), 0); // - code for left right correction
	}

	void FixedUpdate () {
		Movement ();

	}
}