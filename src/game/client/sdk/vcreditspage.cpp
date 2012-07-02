//========= Copyright © 1996-2008, Valve Corporation, All rights reserved. ============//
//
// Purpose: Page for the manual that has info about game types in it.
//
//=====================================================================================//

#include "cbase.h"
#include "vcreditspage.h"
#include "nb_header_footer.h"
#include <vgui_controls/RichText.h>

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

//=============================================================================
CreditsPage::CreditsPage(Panel *parent, const char *panelName):
BaseClass(parent, panelName)
{
	GameUI().PreventEngineHideGameUI();

	SetDeleteSelfOnClose(true);

	SetProportional( true );

	SetUpperGarnishEnabled(true);
	SetLowerGarnishEnabled(true);

	m_pHeaderFooter = new CNB_Header_Footer( this, "HeaderFooter" );
	m_pHeaderFooter->SetTitle( "" );
	m_pHeaderFooter->SetHeaderEnabled( false );
	m_pHeaderFooter->SetFooterEnabled( true );
	m_pHeaderFooter->SetGradientBarEnabled( true );
	m_pHeaderFooter->SetGradientBarPos( 100, 300 );
}

//=============================================================================
CreditsPage::~CreditsPage()
{
	GameUI().AllowEngineHideGameUI();
}

void CreditsPage::PerformLayout()
{
	BaseClass::PerformLayout();

	SetBounds( 0, 0, ScreenWidth(), ScreenHeight() );
}

//=============================================================================
void CreditsPage::Activate()
{
	BaseClass::Activate();
}

void CreditsPage::PaintBackground()
{
	//BaseClass::DrawDialogBackground( "#GameUI_Multiplayer", NULL, "#L4D360UI_Multiplayer_Desc", NULL, NULL, true );
}

void CreditsPage::ApplySchemeSettings( vgui::IScheme *pScheme )
{
	BaseClass::ApplySchemeSettings( pScheme );

	// required for new style
	SetPaintBackgroundEnabled( true );
	SetupAsDialogStyle();
}

//=============================================================================
void CreditsPage::OnCommand(const char *command)
{
	if( Q_stricmp( "Back", command ) == 0 )
	{
		OnKeyCodePressed( ButtonCodeToJoystickButtonCode( KEY_XBUTTON_B, CBaseModPanel::GetSingleton().GetLastActiveUserId() ) );
	}
}

void CreditsPage::OnKeyCodePressed(KeyCode code)
{
	int joystick = GetJoystickForCode( code );
	int userId = CBaseModPanel::GetSingleton().GetLastActiveUserId();
	if ( joystick != userId || joystick < 0 )
	{	
		return;
	}

	switch ( GetBaseButtonCode( code ) )
	{
	case KEY_XBUTTON_B:
		// nav back
		BaseClass::OnKeyCodePressed(code);
		break;

	default:
		BaseClass::OnKeyCodePressed(code);
		break;
	}
}