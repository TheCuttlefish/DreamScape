using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WayPointAutoFollow : MonoBehaviour {

	public WayPointSystem w_system;
	[Range (0, 2)]
	public float speed = 1;
	[Range (1, 100)]
	public int approxFirstPointPos;
	[Range (1, 10)]
	public int distLimit = 1;
	private Vector3 newPos;
	int totalPoints;
	int currentPoint;

	void Start () {
		totalPoints = w_system.wayPoints.Count;
		currentPoint = (totalPoints * approxFirstPointPos) / 100;
		newPos = w_system.wayPoints[currentPoint].transform.position;
		transform.position = w_system.wayPoints[currentPoint].transform.position;
	}

	float dist;

	void Update () {

		dist = Vector3.Distance (transform.position, newPos);
		if (dist > distLimit) {
			transform.position = Vector3.Lerp (transform.position, newPos, speed * Time.deltaTime);
		} else {
			GetNextPoint ();
		}

	}

	void GetNextPoint () {

		currentPoint++;
		newPos = w_system.wayPoints[currentPoint % totalPoints].transform.position;

	}
}