using System.Collections;
using UnityEngine;

[CreateAssetMenu (fileName = "new warp", menuName = "★ Screen Effects/new warp", order = 1)]
public class ScreenWarp : ScriptableObject {

	public Texture2D screenMap;
	public Texture2D noiseMap;
	public bool rotation = false;
	[Range (0, 1)]
	public float rotationSpeed = 0.5f;
	[Range (0, 1)]
	public float uvWarp = 0;

	public Color fadeColour = Color.white;
	[Range (0, 1)]
	public float fade = 0.0f;
	[Range (0, 1)]
	public float transitionEnterValue = 0.01f;
	[Range (0, 1)]
	public float transitionExitValue = 0.3f;

	public int screenMode  = 0;//not used?
}