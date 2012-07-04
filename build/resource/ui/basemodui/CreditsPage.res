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
		"xpos"				"c200"
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
		"xpos"				"c200"
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
		"xpos"				"c200"
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
		"xpos"				"c200"
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
		"xpos"				"c200"
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
		"xpos"				"c200"
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

	"IconBackArrow" [$WIN32]
	{
		"ControlName"			"ImagePanel"
		"fieldName"				"IconBackArrow"
		"xpos"					"c-195"
		"ypos"					"420"
		"wide"					"15"
		"tall"					"15"
		"scaleImage"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"image"					"icon_button_arrow_left"
		"scaleImage"			"1"
	}

	"BtnCancel" [$WIN32]
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnCancel"
		"xpos"					"c-180"
		"ypos"					"420"
		"zpos"					"1"
		"wide"					"250"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"labelText"				"#L4D360UI_Done"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"MainMenuSmallButton"
		"command"				"Back"
		"proportionalToParent"	"1"
		"usetitlesafe" 			"0"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
		"allcaps"				"1"
	}
}