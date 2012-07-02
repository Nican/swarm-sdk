"Resource/UI/DropDownLobbySteamPlayer.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"					"0"
		"ypos"					"0"
		"zpos"					"1"
		"wide"					"150"
		"tall"					"65"
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"		"1"
		"paintborder"			"1"
	}

	"BtnSendMessage"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnSendMessage"
		"xpos"				"0"
		"ypos"				"0"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnViewStats"
		"navDown"			"BtnViewSteamID"
		"labelText"			"#L4D360UI_SendMessage"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_SendMessage"
	}	
	
	"BtnViewSteamID"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnViewSteamID"
		"xpos"				"0"
		"ypos"				"20"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnSendMessage"
		"navDown"			"BtnViewStats"
		"labelText"			"#L4D360UI_ViewSteamID"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_ViewSteamID"
	}	
	
	"BtnViewStats"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"			"BtnViewStats"
		"xpos"				"0"
		"ypos"				"40"
		"zpos"				"2"
		"wide"				"140"
		"tall"				"40"
		"autoResize"			"1"
		"pinCorner"			"0"
		"visible"			"1"
		"enabled"			"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnViewSteamID"
		"navDown"			"BtnSendMessage"
		"labelText"			"#L4D360UI_ViewSteamStats"
		"style"				"FlyoutMenuButton"
		"command"			"#L4D360UI_ViewSteamStats"
	}	

}