using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Tumbleweed : MonoBehaviour {

	public float speed = 0.1f;
	int timer = 0;
	// Update is called once per frame
	void Update () {

		timer++;
		if (timer > 100) {

			timer = Random.Range(0, 99);

			GetComponent<Rigidbody> ().AddForce (Vector3.up * speed);
		}

		
	}
}