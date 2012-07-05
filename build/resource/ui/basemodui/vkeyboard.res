"Resource\UI\basemodui\VKeyboard.res"
{
	"VKeyboard"
	{
		"ControlName"		"EditablePanel"
		"fieldName"			"VKeyboard"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"f0"
		"tall"				"f0"
		"visible"			"1"
		"enabled"			"1"
	}
	
	"ImgBackground"	[$WIN32]
	{
		"ControlName"			"L4DMenuBackground"
		"fieldName"				"ImgBackground"
		"xpos"					"0"
		"ypos"					"79"
		"zpos"					"-1"
		"wide"					"f0"
		"tall"					"340"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"fillColor"				"0 0 0 0"
	}
	
	"BtnCancel"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnCancel"
		"xpos"					"c-246"
		"ypos"					"330" [$POSIX]
		"ypos"					"370" [!$POSIX]
		"zpos"					"0"
		"wide"					"260"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnUseRecommended"
		"navDown"				"BtnDone"
		"AllCaps"				"1"
		"labelText"				"#L4D360UI_Cancel"
		"tooltiptext"			"#L4D360UI_Tooltip_Cancel"
		"style"					"DefaultButton"
		"command"				"Cancel"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}	
	
	"BtnDone"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnDone"
		"xpos"					"c-246"
		"ypos"					"350" [$POSIX]
		"ypos"					"390" [!$POSIX]
		"zpos"					"0"
		"wide"					"260"
		"tall"					"15"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"					"1"
		"navUp"					"BtnCancel"
		"navDown"				"Btn3rdPartyCredits"
		"AllCaps"				"1"
		"labelText"				"#L4D360UI_Done"
		"tooltiptext"			"#L4D360UI_Tooltip_Back"
		"style"					"RedButton"
		"command"				"Back"
		EnabledTextInsetX		"2"
		DisabledTextInsetX		"2"
		FocusTextInsetX			"2"
		OpenTextInsetX			"2"
	}
}
