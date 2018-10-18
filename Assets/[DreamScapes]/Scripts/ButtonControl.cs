using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class ButtonControl : MonoBehaviour, IPointerDownHandler, IPointerUpHandler {

	private Player player;

	public void Awake () {

		player = GameObject.Find ("Player").GetComponent<Player> ();
	
	}

	public void OnPointerDown (PointerEventData eventData) {
		player.MoveForward ();

	}

	public void OnPointerUp (PointerEventData eventData) {
		player.MoveForwardStop ();

	}
}