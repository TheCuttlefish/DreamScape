using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

[ExecuteInEditMode]
public class WayPointSystem : MonoBehaviour {

	public bool loopPath = false;
	public List<GameObject> wayPoints = new List<GameObject> ();

	public UIColours colours;
	int currentActivePoint = 0;

	public UnityEvent OnPositionUpdate;

	Vector3 activePoint;

	public bool showAllPoints = false;

	public Vector3 GetActivePoint () {
		return activePoint;
	}

	void Start () {
		UpdateActivePoint ();
	}

	void Update () {

		if (showAllPoints) {
			foreach (var p in wayPoints) {
				p.GetComponent<WayPoint> ().Show ();
			}
			showAllPoints = false;
		}

		DrawLines ();
	}

	void DrawLines () {

		for (int i = 0; i < wayPoints.Count; i++) {
			if (i < (wayPoints.Count - 1)) {

				Debug.DrawLine (wayPoints[i].transform.position, wayPoints[(i + 1) % wayPoints.Count].transform.position, colours.selected);

				if (currentActivePoint == i + 1)
					Debug.DrawLine (wayPoints[i].transform.position, wayPoints[(i + 1) % wayPoints.Count].transform.position, colours.deselected);

			}
		}
	}

	public void UpdateActivePoint () {

		for (int i = 0; i < wayPoints.Count; i++) {

			wayPoints[i].GetComponent<WayPoint> ().Hide ();

			if (loopPath) {
				if (currentActivePoint % wayPoints.Count == i) {
					wayPoints[i].GetComponent<WayPoint> ().Show ();
					activePoint = wayPoints[i].transform.position;
				}
			} else {
				if (currentActivePoint == i) {
					wayPoints[i].GetComponent<WayPoint> ().Show ();
					activePoint = wayPoints[i].transform.position;
				}
			}
		}

		currentActivePoint++;

		OnPositionUpdate.Invoke ();
	}

}

[System.Serializable]
public class UIColours {
	public Color selected;
	public Color deselected;
}