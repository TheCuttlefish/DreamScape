using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Enemy : MonoBehaviour {

	Vector3 playerPos = new Vector3 (1, 0, 0);
	Vector3 enemyPos = new Vector3 (-1, 0, 0);

	void Start () {

		print (Vector3.Dot (playerPos.normalized, enemyPos.normalized));

	}

	// Update is called once per frame
	void Update () {

		float sineFun = Mathf.Sin (Time.time);
		print (sineFun);

	}
}