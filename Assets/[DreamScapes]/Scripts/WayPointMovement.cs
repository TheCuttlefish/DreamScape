using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class WayPointMovement : MonoBehaviour {

	private Vector3 newPos;
	private WayPointSystem system;
	[Range (0, 5)]
	public float speed;
	private float dist;
	private float distLimit = 0.1f;

	void Start () {
		system = GameObject.Find ("WayPointSystem").GetComponent<WayPointSystem> ();
		newPos = Vector3.forward;
	}

	public void UpdatePosition () {
		newPos = system.GetActivePoint ();

	}

	void Update () {

		dist = Vector3.Distance (transform.position, newPos);
		if (dist > distLimit)
			transform.position = Vector3.Lerp (transform.position, newPos, speed * Time.deltaTime);

		Vector3 normal = Vector3.Normalize (transform.position - newPos);

		float xRot = Vector3.Dot (transform.up, normal);
		float yRot = Vector3.Dot (-transform.right, normal);
		float zRot = Vector3.Dot (transform.up, Vector3.right);

		float rx = transform.localEulerAngles.x;
		float ry = transform.localEulerAngles.y;
		float rz = transform.localEulerAngles.z;
		transform.localEulerAngles = new Vector3 (rx + xRot, ry + yRot, rz);

	}
}