using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CamMovement : MonoBehaviour {

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate(0,0,0.3f);
		if(transform.position.z > 10){
			Application.LoadLevel(0);
		}
	}
}
