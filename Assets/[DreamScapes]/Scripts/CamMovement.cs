using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class CamMovement : MonoBehaviour {

	public float speed = 0.01f;

	
	// Update is called once per frame
	void Update () {
		transform.Translate (0, 0, speed);
		if (transform.position.z > 0) {
			SceneManager.LoadScene (Random.Range(0,2));
		}
	}
}