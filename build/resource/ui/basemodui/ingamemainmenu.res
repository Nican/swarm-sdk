"Resource/UI/InGameMainMenu.res"
{
	"InGameMainMenu"
	{
		"ControlName"			"Frame"
		"fieldName"				"InGameMainMenu"
		"xpos"				"0"
		"ypos"				"0"
		"wide"				"f0"
		"tall"				"f0"
		"autoResize"			"0"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"PaintBackgroundType"		"0"
	}
	
	"PnlBackground"
	{
		"ControlName"			"Panel"
		"fieldName"				"PnlBackground"
		"xpos"				"0"
		"ypos"				"105"
		"zpos"				"-1"
		"wide"				"f0"
		"tall"				"260"
		"visible"				"1"			[$WIN32]
		"visible"				"0"			[$X360]
		"enabled"				"1"
		"fillColor"				"0 0 0 255"
	}
			
	"BtnReturnToGame"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnReturnToGame"
		"xpos"				"100"
		"ypos"				"148"
		"wide"				"220"	[$WIN32]
		"wide"				"180"	[$X360]
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"1"
		"navUp"				"BtnExitToMainMenu"
		"navDown"				"BtnGoIdle"
		"labelText"				"#L4D360UI_InGameMainMenu_ReturnToGame"
		"tooltiptext"			"#L4D360UI_InGameMainMenu_ReturnToGame_Tip"
		"style"				"MainMenuButton"
		"command"				"ReturnToGame"
		"ActivationType"			"1"
	}
	
	"BtnMute"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnMute"
		"xpos"				"100"
		"ypos"				"185"
		"wide"				"220"	[$WIN32]
		"wide"				"180"	[$X360]
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"				"BtnGoIdle"
		"navDown"				"BtnFindServers"
		"labelText"				"#L4D360UI_PlayerList"
		"tooltiptext"			"#L4D360UI_PlayerList"
		"disabled_tooltiptext" 		"#L4D360UI_PlayerList"
		"style"				"MainMenuButton"
		"command" 				"OpenMutePlayers"
		"ActivationType"			"1"
	}
	
	"BtnFindServers" [$WIN32]
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnFindServers"
		"xpos"				"100"
		"ypos"				"210"
		"wide"				"220"
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"				"BtnMute"
		"navDown"				"BtnStatsAndAchievements"
		"labelText"				"#GameUI_GameMenu_FindServers"
		"tooltiptext"			"#GameUI_GameMenu_FindServers"
		"disabled_tooltiptext"		"#GameUI_GameMenu_FindServers"
		"style"				"MainMenuButton"
		"ActivationType"			"1"
		"command"				"OpenServerBrowser"
	}

	"BtnStatsAndAchievements"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnStatsAndAchievements"
		"xpos"				"100"
		"ypos"				"235"
		"wide"				"220"	[$WIN32]
		"wide"				"180"	[$X360]
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"		[!$X360GUEST]
		"enabled"				"0"		[$X360GUEST]
		"tabPosition"			"0"
		"navUp"				"BtnLeaderboard"
		"navDown"				"BtnOptions"
		"labelText"				"#L4D360UI_MainMenu_StatsAndAchievements"
		"tooltiptext"			"#L4D360UI_MainMenu_PCStatsAndAchievements_Tip"	[$WIN32]
		"tooltiptext"			"#L4D360UI_MainMenu_StatsAndAchievements_Tip"	[$X360]
		"style"				"MainMenuButton"
		"command"				"StatsAndAchievements"
		"ActivationType"			"1"
		"EnableCondition"			"Never" [$DEMO]
	}

	"BtnOptions"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnOptions"
		"xpos"				"100"
		"ypos"				"260"
		"wide"				"220"	[$WIN32]
		"wide"				"180"	[$X360]
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"				"BtnStatsAndAchievements"
		"navDown"				"BtnExitToMainMenu"
		"labelText"				"#L4D360UI_MainMenu_Options"
		"tooltiptext"			"#L4D360UI_MainMenu_Options_Tip"
		"style"				"MainMenuButton"
		"command"				"FlmOptionsFlyout"
		"ActivationType"			"1"
	}

	"BtnExitToMainMenu"
	{
		"ControlName"			"BaseModHybridButton"
		"fieldName"				"BtnExitToMainMenu"
		"xpos"				"100"
		"ypos"				"297"
		"wide"				"220"	[$WIN32]
		"wide"				"180"	[$X360]
		"tall"				"20"
		"autoResize"			"1"
		"pinCorner"				"0"
		"visible"				"1"
		"enabled"				"1"
		"tabPosition"			"0"
		"navUp"				"BtnOptions"
		"navDown"				"BtnReturnToGame"
		"labelText"				"#L4D360UI_InGameMainMenu_ExitToMainMenu"
		"tooltiptext"			"#L4D360UI_InGameMainMenu_ExitToMainMenu_Tip"
		"style"				"MainMenuButton"
		"command"				"ExitToMainMenu"
		"ActivationType"			"1"
	}

	"FlmOptionsFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsFlyout"
		"visible"				"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"			"BtnVideo" [$WIN32]
		"InitialFocus"			"BtnAudioVideo" [$X360]
		"ResourceFile"			"resource/UI/basemodui/OptionsFlyout.res"		[$WIN32]
		"ResourceFile"			"resource/UI/basemodui/OptionsFlyoutIngame.res"	[$X360]
	}
	
	"FlmOptionsGuestFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmOptionsGuestFlyout"
		"visible"				"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"			"BtnAudioVideo"
		"ResourceFile"			"resource/UI/basemodui/OptionsGuestFlyout.res"
	}

	"FlmVoteFlyout"
	{
		"ControlName"			"FlyoutMenu"
		"fieldName"				"FlmVoteFlyout"
		"visible"				"0"
		"wide"				"0"
		"tall"				"0"
		"zpos"				"3"
		"InitialFocus"			"BtnReturnToLobby"
		"ResourceFile"			"resource/UI/basemodui/InGameVoteFlyout.res"
	}
}
