using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
public class MenuSettings : MonoBehaviour {

	private Slider blueLightSlider;
	public SettingsComponent gameSettings;

	void Awake () {

		blueLightSlider = transform.Find ("BlueLightSlider").GetComponent<Slider>();

		blueLightSlider.value = gameSettings.blueLightControl;
		blueLightSlider.onValueChanged.AddListener (delegate { ValueChangeCheck (); });
	}

	public void ValueChangeCheck () {
		gameSettings.blueLightControl = blueLightSlider.value;
	}
}