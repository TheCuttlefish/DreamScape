using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InGameMenu : MonoBehaviour {

	int spawnCounter = 0;

	void Update () {
		RandomSpawner ();
	}

	void RandomSpawner () {
		spawnCounter += 1;

		if (spawnCounter > 100) {

			//spawn your object here!!
			spawnCounter = Random.Range (-10, 10);
		}
	}
}