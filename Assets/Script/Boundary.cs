using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Boundary : MonoBehaviour {

	// Use this for initialization
	public bool enableOnStart = true;
	void Start () {
		GetComponent<MeshRenderer> ().enabled = enableOnStart;
	}

	// Update is called once per frame
	void Update () {

	}
}