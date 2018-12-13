using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HexToRGB : MonoBehaviour {

	string hex;

	public Color colour;

	[System.Serializable]
	public class Movement {
		[Space (100)]
		public float moveV;
		public float moveH;

		public bool isRunning;
		public bool isLooking;
	}
	public Movement movement;

	void Start () {

	}

	bool convertFromString = false;
	public bool convertFromColour = false;

	public string OUTPUT;

	void Update () {

		if (convertFromString) {
			ConvertHEXtoRGB ();
			convertFromString = false;
		}

		if (convertFromColour) {
			ConvertColourToRGB ();
			convertFromColour = false;
		}

	}

	void ConvertColourToRGB () {
		OUTPUT =
			"(" + (colour.r).ToString ("F2") +
			"f," + (colour.g).ToString ("F2") +
			"f," + (colour.b).ToString ("F2") +
			"f," + (colour.a).ToString ("F2") + "f)";
	}

	void ConvertHEXtoRGB () {

		float r, g, b, a;

		r = HexToInt (hex[0].ToString ()) *
			HexToInt (hex[1].ToString ());

		g = HexToInt (hex[2].ToString ()) *
			HexToInt (hex[3].ToString ());

		b = HexToInt (hex[4].ToString ()) *
			HexToInt (hex[5].ToString ());

		a = HexToInt (hex[6].ToString ()) *
			HexToInt (hex[7].ToString ());

		print (r + " " + g + " " + b + " " + a);

		OUTPUT =
			"(" + (r / 225).ToString ("F2") +
			" " + (g / 225).ToString ("F2") +
			" " + (b / 225).ToString ("F2") +
			" " + (a / 225).ToString ("F2") + ")";
	}

	float HexToInt (string hex) {

		switch (hex) {
			case "0":
				return 0;
			case "1":
				return 1;
			case "2":
				return 2;
			case "3":
				return 3;
			case "4":
				return 4;
			case "5":
				return 5;
			case "6":
				return 6;
			case "7":
				return 7;
			case "8":
				return 8;
			case "9":
				return 9;
			case "A":
				return 10;
			case "B":
				return 11;
			case "C":
				return 12;
			case "D":
				return 13;
			case "E":
				return 14;
			case "F":
				return 15;
		}
		return 0;
	}
}