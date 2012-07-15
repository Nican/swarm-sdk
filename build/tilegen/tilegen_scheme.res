///////////////////////////////////////////////////////////
// Tracker scheme resource file
//
// sections:
//		Colors			- all the colors used by the scheme
//		BaseSettings	- contains settings for app to use to draw controls
//		Fonts			- list of all the fonts used by app
//		Borders			- description of all the borders
//
///////////////////////////////////////////////////////////
Scheme
{
	//////////////////////// COLORS ///////////////////////////
	// color details
	// this is a list of all the colors used by the scheme
	Colors
	{
		// base colors
		"White"				"255 255 255 255"
		"OffWhite"			"221 221 221 255"
		"DullWhite"			"211 211 211 255"
		"Yellow"      "255 255 0 255"
		
		"LightBlue"			"66 142 192 255"
		"GreyBlue"			"65 74 96 255"
		"DarkBlueTrans"			"65 74 96 64"
		"DarkBlue"			"32 36 47 255"
		"DarkGrey"			"128 128 128 255"
		
		"TransparentBlack"	"0 0 0 128"
		"Black"				"0 0 0 255"

		"Blank"				"0 0 0 0"

		// base colors
		"BaseText"			"216 222 211 255"	// used in text windows, lists
		"BrightBaseText"	"255 255 255 255"	// brightest text
		"SelectedText"		"255 255 255 255"	// selected text
		"DimBaseText"		"160 170 149 255"	// dim base text
		"LabelDimText"		"160 170 149 255"	// used for info text
		"ControlText"		"216 222 211 255"	// used in all text controls
		"BrightControlText"	"196 181 80 255"	// use for selected controls
		"DisabledText1"		"117 128 111 255"	// disabled text
		"DisabledText2"		"40 46 34 255"		// overlay color for disabled text (to give that inset look)
		"DimListText"		"117 134 102 255"	// offline friends, unsubscribed games, etc.

		// background colors
		"ControlBG"			"65 74 96 255"		// background color of controls
		"ControlDarkBG"		"65 74 96 255"		// darker background color; used for background of scrollbars
		"WindowBG"			"62 70 55 255"		// background color of text edit panes (chat, text entries, etc.)
		"SelectionBG"		"149 136 49 255"	// background color of any selected text or menu item
		"SelectionBG2"		"40 46 34 255"		// selection background in window w/o focus
		"ListBG"			"62 70 55 255"		// background of server browser, buddy list, etc.

		// titlebar colors
		"TitleText"			"255 255 255 255"
		"TitleDimText"		"136 145 128 255"
		"TitleBG"			"76 88 68 0"
		"TitleDimBG"		"76 88 68 0"
		
		// slider tick colors
		"SliderTickColor"	"127 140 127 255"
		"SliderTrackColor"	"31 31 31 255"

		// border colors
		"BorderBright"		"200 200 200 196"	// the lit side of a control
		"BorderDark"		"46 46 46 255"		// the dark/unlit side of a control
		"BorderSelection"	"0 0 0 255"			// the additional border color for displaying the default/selected button

		"TestColor"		"255 0 255 255"
		
		"ScrollBarGrey"		"51 51 51 255"
		"ScrollBarHilight"	"110 110 110 255"
		"ScrollBarDark"		"38 38 38 255"
	}

	///////////////////// BASE SETTINGS ////////////////////////
	//
	// default settings for all panels
	// controls use these to determine their settings
	BaseSettings
	{
		// vgui_controls color specifications
		Border.Bright					"BorderBright"	// the lit side of a control
		Border.Dark						"BorderDark"		// the dark/unlit side of a control
		Border.Selection				"BorderSelection"			// the additional border color for displaying the default/selected button

		Button.TextColor				"White"
		Button.BgColor					"Blank"
		Button.ArmedTextColor			"White"
		Button.ArmedBgColor				"Blank"
		Button.DepressedTextColor		"White"
		Button.DepressedBgColor			"Blank"
		Button.FocusBorderColor			"Black"
		
		CheckButton.TextColor			"LightBlue"
		CheckButton.SelectedTextColor	"White"
		CheckButton.BgColor				"TransparentBlack"
		CheckButton.Border1  			"Border.Dark" 		// the left checkbutton border
		CheckButton.Border2  			"Border.Bright"		// the right checkbutton border
		CheckButton.Check				"White"				// color of the check itself

		ComboBoxButton.ArrowColor		"DullWhite"
		ComboBoxButton.ArmedArrowColor	"White"
		ComboBoxButton.BgColor			"Blank"
		ComboBoxButton.DisabledBgColor	"Blank"

		Frame.TitleTextInsetX			30
		Frame.ClientInsetX				20
		Frame.ClientInsetY				6
		Frame.BgColor					"65 74 96 128"
		Frame.OutOfFocusBgColor			"65 74 96 32"
		Frame.FocusTransitionEffectTime	"0.0"	// time it takes for a window to fade in/out on focus/out of focus
		Frame.TransitionEffectTime		"0.0"	// time it takes for a window to fade in/out on open/close
		Frame.AutoSnapRange				"0"
		FrameGrip.Color1				"200 200 200 196"
		FrameGrip.Color2				"0 0 0 196"
		FrameTitleButton.FgColor		"255 255 255 255"
		FrameTitleButton.BgColor		"Blank"
		FrameTitleButton.DisabledFgColor	"255 255 255 192"
		FrameTitleButton.DisabledBgColor	"Blank"
		FrameSystemButton.FgColor		"Blank"
		FrameSystemButton.BgColor		"Blank"
		FrameSystemButton.Icon			""
		FrameSystemButton.DisabledIcon	""
		FrameTitleBar.TextColor			"White"
		FrameTitleBar.BgColor			"Blank"
		FrameTitleBar.DisabledTextColor	"255 255 255 192"
		FrameTitleBar.DisabledBgColor	"Blank"
		//FrameTitleBar.Font              "Sansman16"

		GraphPanel.FgColor				"White"
		GraphPanel.BgColor				"TransparentBlack"

		Label.TextDullColor				"DullWhite"
		Label.TextColor					"OffWhite"
		Label.TextBrightColor			"White"
		Label.SelectedTextColor			"White"
		Label.BgColor					"Blank"
		Label.DisabledFgColor1			"117 117 117 255"
		Label.DisabledFgColor2			"30 30 30 255"

		ListPanel.TextColor					"OffWhite"
		ListPanel.BgColor					"TransparentBlack"
		ListPanel.SelectedTextColor			"Black"
		ListPanel.SelectedBgColor			"LightBlue"
		ListPanel.SelectedOutOfFocusBgColor	"LightBlue"
		ListPanel.EmptyListInfoTextColor	"LightBlue"

		Menu.TextColor					"White"
		Menu.BgColor					"160 160 160 64"
		Menu.ArmedTextColor				"Black"
		Menu.ArmedBgColor				"LightBlue"
		Menu.TextInset					"6"
		Menu.FgColor			"DimBaseText"

		Menu.ArmedFgColor		"BrightBaseText"

		Menu.DividerColor		"BorderDark"

		Panel.FgColor					"DullWhite"
		Panel.BgColor					"Blank"

		ProgressBar.FgColor				"White"
		ProgressBar.BgColor				"TransparentBlack"

		PropertySheet.TextColor			"LightBlue"
		PropertySheet.SelectedTextColor	"White"
		PropertySheet.TransitionEffectTime	"0.0"	// time to change from one tab to another


		RadioButton.TextColor			"DullWhite"
		RadioButton.SelectedTextColor	"White"

		RichText.TextColor				"OffWhite"
		RichText.BgColor				"DarkBlue"
		RichText.SelectedTextColor		"Black"
		RichText.SelectedBgColor		"LightBlue"

		ScrollBar.Wide					17

		ScrollBarButton.FgColor				"68 140 203 255"
		ScrollBarButton.BgColor				"ControlDarkBG"
		ScrollBarButton.ArmedFgColor		"BrightBaseText"
		ScrollBarButton.ArmedBgColor		"ControlDarkBG"
		ScrollBarButton.DepressedFgColor	"BrightBaseText"
		ScrollBarButton.DepressedBgColor	"ControlDarkBG"

		ScrollBarSlider.FgColor				"GreyBlue"			// nob color
		ScrollBarSlider.BgColor				"Black"	// slider background color
		ScrollBarSlider.NobFocusColor			"ScrollBarHilight"		// nob mouseover color
		ScrollBarSlider.NobDragColor			"ScrollBarHilight"		// nob active drag color

		SectionedListPanel.HeaderTextColor	"White"
		SectionedListPanel.HeaderBgColor	"Blank"
		SectionedListPanel.DividerColor		"Black"
		SectionedListPanel.TextColor		"LightBlue"
		SectionedListPanel.BrightTextColor	"White"
		SectionedListPanel.BgColor			"TransparentBlack"
		SectionedListPanel.SelectedTextColor			"Black"
		SectionedListPanel.SelectedBgColor				"LightBlue"
		SectionedListPanel.OutOfFocusSelectedTextColor	"Black"
		SectionedListPanel.OutOfFocusSelectedBgColor	"LightBlue"

		Slider.NobColor				"ControlDarkBG"		
		Slider.TextColor			"ControlBG"
		Slider.TrackColor			"ControlDarkBG"
//		Slider.DisabledTextColor1	"117 117 117 255"
//		Slider.DisabledTextColor2	"30 30 30 255"

		TextEntry.TextColor			"OffWhite"
		TextEntry.BgColor			"TransparentBlack"
		TextEntry.CursorColor		"OffWhite"
		TextEntry.DisabledTextColor	"DullWhite"
		TextEntry.DisabledBgColor	"Blank"
		TextEntry.SelectedTextColor	"Black"
		TextEntry.SelectedBgColor	"LightBlue"
		TextEntry.OutOfFocusSelectedBgColor	"LightBlue"
		TextEntry.FocusEdgeColor	"0 0 0 196"

		ToggleButton.SelectedTextColor	"White"

		Tooltip.TextColor			"0 0 0 196"
		Tooltip.BgColor				"LightBlue"

		TreeView.BgColor			"TransparentBlack"

		WizardSubPanel.BgColor		"Blank"

		// scheme-specific colors
		MainMenu.TextColor			"White"
		MainMenu.ArmedTextColor		"200 200 200 255"
		MainMenu.DepressedTextColor	"192 186 80 255"
		MainMenu.MenuItemHeight		"30"
		MainMenu.Inset				"32"

		Console.TextColor			"OffWhite"
		Console.DevTextColor		"White"

		NewGame.TextColor			"White"
		NewGame.FillColor			"0 0 0 255"
		NewGame.SelectionColor		"LightBlue"
		NewGame.DisabledColor		"128 128 128 196"
	}

	//
	//////////////////////// FONTS /////////////////////////////
	//
	// describes all the fonts
	Fonts
	{
		// fonts are used in order that they are listed
		// fonts listed later in the order will only be used if they fulfill a range not already filled
		// if a font fails to load then the subsequent fonts will replace
		// fonts are used in order that they are listed
		"DebugFixed"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"10"
				"weight"	"500"
				"antialias" "1"
			}
		}
		// fonts are used in order that they are listed
		"DebugFixedSmall"
		{
			"1"
			{
				"name"		"Courier New"
				"tall"		"7"
				"weight"	"500"
				"antialias" "1"
			}
		}
		"DefaultFixedOutline"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"outline"	"1"
			}
		}
		"Default"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"500"
			}
		}
		"DefaultBold"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"1000"
			}
		}
		"DefaultUnderline"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"500"
				"underline" "1"
			}
		}
		"DefaultSmall"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"13"
				"weight"	"0"
			}
		}
		"DefaultSmallDropShadow"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"13"
				"weight"	"0"
				"dropshadow" "1"
			}
		}
		"DefaultVerySmall"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"12"
				"weight"	"0"
			}
		}

		"DefaultLarge"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"18"
				"weight"	"0"
			}
		}
		"UiBold"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"12"
				"weight"	"1000"
			}
		}
		"MenuLarge"
		{
			"1"
			{
				"name"		"Verdana"
				"tall"		"16"
				"weight"	"600"
				"antialias" "1"
			}
		}

		"ConsoleText"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"500"
			}
		}

		// this is the symbol font
		"Marlett"
		{
			"1"
			{
				"name"		"Marlett"
				"tall"		"14"
				"weight"	"0"
				"symbol"	"1"
			}
		}

		"Trebuchet24"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"24"
				"weight"	"900"
			}
		}


		"Trebuchet20"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"20"
				"weight"	"900"
			}
		}

		"Trebuchet18"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"18"
				"weight"	"900"
			}
		}

		// HUD numbers
		// We use multiple fonts to 'pulse' them in the HUD, hence the need for many of near size
		"HUDNumber"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"40"
				"weight"	"900"
			}
		}
		"HUDNumber1"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"41"
				"weight"	"900"
			}
		}
		"HUDNumber2"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"42"
				"weight"	"900"
			}
		}
		"HUDNumber3"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"43"
				"weight"	"900"
			}
		}
		"HUDNumber4"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"44"
				"weight"	"900"
			}
		}
		"HUDNumber5"
		{
			"1"
			{
				"name"		"Trebuchet MS"
				"tall"		"45"
				"weight"	"900"
			}
		}
		"DefaultFixed"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"DefaultFixedDropShadow"
		{
			"1"
			{
				"name"		"Lucida Console"
				"tall"		"10"
				"weight"	"0"
				"dropshadow" "1"
			}
//			"1"
//			{
//				"name"		"FixedSys"
//				"tall"		"20"
//				"weight"	"0"
//			}
		}

		"CloseCaption_Normal"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"500"
			}
		}
		"CloseCaption_Italic"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"500"
				"italic"	"1"
			}
		}
		"CloseCaption_Bold"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"900"
			}
		}
		"CloseCaption_BoldItalic"
		{
			"1"
			{
				"name"		"Tahoma"
				"tall"		"16"
				"weight"	"900"
				"italic"	"1"
			}
		}

		TitleFont
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"72"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}

		TitleFont2
		{
			"1"
			{
				"name"		"HalfLife2"
				"tall"		"120"
				"weight"	"400"
				"antialias"	"1"
				"custom"	"1"
			}
		}
	}

	//
	//////////////////// BORDERS //////////////////////////////
	//
	// describes all the border types
	Borders
	{
		BaseBorder		InsetBorder
		ButtonBorder	RaisedBorder
		ComboBoxBorder	InsetBorder
		MenuBorder		RaisedBorder
		BrowserBorder	InsetBorder
		PropertySheetBorder	RaisedBorder
		TabBorder		RaisedBorder
		CheckBorder InsetBorder
		FrameBorder	RaisedBorder

		TitleButtonBorder	RaisedBorder
		TitleButtonDepressedBorder InsetBorder
		TitleButtonDisabledBorder
		{
			"backgroundtype" "0"
		}


		ScrollBarButtonBorder
		{
			"inset" "1 0 0 0"
			Left
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "BorderBright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "BorderDark"
					"offset" "0 0"
				}
			}
		}

		InsetBorder
		{
			"inset" "0 0 1 1"
			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}

		DepressedBorder
		{
			"inset" "0 0 1 1"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		RaisedBorder
		{
			"inset" "0 0 1 1"
			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 1"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarButtonBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarButtonDepressedBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}

		TabActiveBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

		}


		ToolTipBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}
		}
		
		SelectedRoomBorder
		{
			"inset" "0 0 1 0"
			Left
			{
				"1"
				{
					"color" "Yellow"
					"offset" "0 0"
				}
			}

			Right
			{
				"1"
				{
					"color" "Yellow"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Yellow"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Yellow"
					"offset" "0 0"
				}
			}
		}

		// this is the border used for default buttons (the button that gets pressed when you hit enter)
		ButtonKeyFocusBorder
		{
			"inset" "0 0 1 1"
			Right
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "1 1"
				}
			}
			Bottom
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Dark"
					"offset" "1 1"
				}
			}
			Left
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}
			Top
			{
				"1"
				{
					"color" "Border.Selection"
					"offset" "0 0"
				}
				"2"
				{
					"color" "Border.Bright"
					"offset" "1 0"
				}
			}
		}
		
		ScrollBarSliderBorder
		{
			"inset" "2 2 0 0"
			Left
			{
				"1"
				{
					"color" "ScrollBarHilight"
					"offset" "0 1"
				}
			}

			Right
			{
				"1"
				{
					"color" "ScrollBarDark"
					"offset" "1 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "ScrollBarHilight"
					"offset" "0 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "ScrollBarDark"
					"offset" "0 0"
				}
			}
		}
		
		ScrollBarSliderBorderHover ScrollBarSliderBorder
		ScrollBarSliderBorderDragging ScrollBarSliderBorder

		ButtonDepressedBorder
		{
			"inset" "2 1 1 1"
			Right
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "1 1"
				}
			}

			Left
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "1 0"
				}
			}

			Bottom
			{
				"1"
				{
					"color" "Border.Bright"
					"offset" "0 0"
				}
			}

			Top
			{
				"1"
				{
					"color" "Border.Dark"
					"offset" "0 0"
				}
			}
		}
	}

	//////////////////////// CUSTOM FONT FILES /////////////////////////////
	//
	// specifies all the custom (non-system) font files that need to be loaded to service the above described fonts
	CustomFontFiles
	{
		//"1"		"resource/HALFLIFE2.ttf"
	
	}
}