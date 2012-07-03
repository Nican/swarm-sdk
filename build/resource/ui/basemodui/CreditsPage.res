"Resource/UI/CreditsPage.res"
{
	"CreditsPage"
	{
		"ControlName"		"Frame"
		"fieldName"			"CreditsPage"
		"xpos"			"0"
		"ypos"			"0"
		"wide"			"f0"
		"tall"			"f0"
		"autoResize"		"0"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"		"0"
	}
	
	"ImgBackground" [$WIN32]
	{
		"ControlName"			"L4DMenuBackground"
		"fieldName"				"ImgBackground"
		"xpos"				"0"
		"ypos"				"99"
		"zpos"				"-1"
		"wide"				"f0"
		"tall"				"300"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"fillColor"				"0 0 0 0"
	}
	
	"SDK_UI_Game_Title"
	{
		"ControlName"			"Label"
		"fieldName"				"SDK_UI_Game_Title"
		"xpos"				"c-350"
		"ypos"				"115" 
		"wide"				"200"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"		[!$X360 || !$DEMO]
		"visible"				"1"		[$X360 && $DEMO]		
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"#SDK_UI_Game_Title"
		"font"				"DefaultLarge"
	}
	
	"Kosire"
	{
		"ControlName"			"Label"
		"fieldName"				"Kosire"
		"xpos"				"c-350"
		"ypos"				"140" 
		"wide"				"100"
		"tall"				"10"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"		[!$X360 || !$DEMO]
		"visible"				"1"		[$X360 && $DEMO]		
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"Kosire"
		"font"				"DefaultMedium"
	}
	
	"Tony Sergi"
	{
		"ControlName"			"Label"
		"fieldName"				"Tony Sergi"
		"xpos"				"c-350"
		"ypos"				"155" 
		"wide"				"100"
		"tall"				"10"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"		[!$X360 || !$DEMO]
		"visible"				"1"		[$X360 && $DEMO]		
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"Tony Sergi"
		"font"				"DefaultMedium"
	}
	
	"c_b_fofep"
	{
		"ControlName"			"Label"
		"fieldName"				"c_b_fofep"
		"xpos"				"c-350"
		"ypos"				"170" 
		"wide"				"100"
		"tall"				"10"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"		[!$X360 || !$DEMO]
		"visible"				"1"		[$X360 && $DEMO]		
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"c_b_fofep"
		"font"				"DefaultMedium"
	}
	
	"Doplhur"
	{
		"ControlName"			"Label"
		"fieldName"				"Doplhur"
		"xpos"				"c-350"
		"ypos"				"185" 
		"wide"				"100"
		"tall"				"10"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"		[!$X360 || !$DEMO]
		"visible"				"1"		[$X360 && $DEMO]		
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"Doplhur"
		"font"				"DefaultMedium"
	}
	
	"Valve"
	{
		"ControlName"			"Label"
		"fieldName"				"Valve"
		"xpos"				"c-350"
		"ypos"				"200" 
		"wide"				"100"
		"tall"				"10"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"		[!$X360 || !$DEMO]
		"visible"				"1"		[$X360 && $DEMO]		
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"Valve"
		"font"				"DefaultMedium"
	}
	
	"BtnDone" [$WIN32]
	{
		"ControlName"			"CNB_Button"
		"fieldName"				"BtnDone"
		"xpos"				"c-350"
		"ypos"				"r32"
		"wide"				"117"
		"tall"				"27"
		"zpos"				"1"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"labelText"				"#L4D360UI_Done_Caps"
		"command"				"Back"
		"textAlignment"			"center"
		"font"				"DefaultMedium"
		"fgcolor_override"		"113 142 181 255"
	}
}