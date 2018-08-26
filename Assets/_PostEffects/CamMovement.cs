using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamMovement : MonoBehaviour {

	public float speed = 0.01f;
	// Update is called once per frame
	void Update () {
		transform.Translate (0, 0, speed);
		if (transform.position.z > 0) {
			Application.LoadLevel (0);
		}
	}
}