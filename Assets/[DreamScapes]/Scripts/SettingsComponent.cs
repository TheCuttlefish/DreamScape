using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[CreateAssetMenu (fileName = "my settings", menuName = "Game Settings", order = 1)]
public class SettingsComponent : ScriptableObject {

	[Range (0, 1)]
	public float blueLightControl = 0.0f;

	public List<string> scenes = new List<string>();

}