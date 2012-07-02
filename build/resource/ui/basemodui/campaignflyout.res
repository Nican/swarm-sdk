"Resource/UI/CampaignFlyout.res"
{
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"				"0"
		"ypos"				"0"
		"zpos"				"-1"
		"wide"				"180" [$ENGLISH]
		"wide"				"270" [!$ENGLISH]
		"tall"				"40"  [$X360]
		"tall"				"40"  [$WIN32]
		"visible"				"1"
		"enabled"				"1"
		"paintbackground"			"1"
		"paintborder"			"1"
	}

	"BtnCreateGame"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnCreateGame"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnPlayCoopWithFriends"	[$X360]
		"navUp"				"BtnPlayOnGroupServer"		[$WIN32]
		"navDown"				"BtnPlayCoopWithAnyone"
		"labelText"				"#L4D360UI_FoudGames_CreateNewFlyout"
		"tooltiptext"			"#L4D360UI_FoudGames_CreateNewFlyout"
		"disabled_tooltiptext"		"#L4D360UI_FoudGames_CreateNewFlyout"
		"style"				"FlyoutMenuButton"
		"command"				"CreateGame"
	}	
	
	"BtnPlayOnGroupServer" [$WIN32]
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnPlayOnGroupServer"
		"xpos"				"0"
		"ypos"				"20"
		"wide"				"150"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"wrap"				"1"
		"navUp"				"BtnPlayCoopWithFriends"
		"navDown"				"DrpCreateGame"
		"labelText"				"#L4D360UI_MainMenu_DedicatedServerBrowser"
		"tooltiptext"			"#L4D360UI_MainMenu_DedicatedServerBrowser"
		"disabled_tooltiptext"		"#L4D360UI_MainMenu_DedicatedServerBrowser"
		"style"				"FlyoutMenuButton"
		"command"				"OpenServerBrowser"
		//"command"				"GroupServer_"
	}
}