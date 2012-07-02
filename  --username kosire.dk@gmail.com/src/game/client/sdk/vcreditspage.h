//========= Copyright © 1996-2008, Valve Corporation, All rights reserved. ============//
//
// Purpose: Page for the manual that has info about game types in it.
//
//=====================================================================================//

#include "../swarm/gameui/swarm/basemodui.h"
#include <vgui_controls/ImagePanel.h>

using namespace vgui;
using namespace BaseModUI;

class CNB_Header_Footer;

class CreditsPage : public CBaseModFrame
{
	DECLARE_CLASS_SIMPLE( CreditsPage, CBaseModFrame );

public:
	CreditsPage(vgui::Panel *parent, const char *panelName);
	~CreditsPage();

	virtual void PerformLayout();

protected:
	virtual void Activate();
	//virtual void OnThink();
	virtual void PaintBackground();
	virtual void ApplySchemeSettings( vgui::IScheme* pScheme );
	virtual void OnKeyCodePressed(vgui::KeyCode code);
	virtual void OnCommand( const char *command );

private:
	CNB_Header_Footer *m_pHeaderFooter;
	//RichText *m_pRaptorText;
	//RichText *m_pDesmaText;
	//RichText *m_pDilophText;

	//ImagePanel *m_pRaptorImg;
	//ImagePanel *m_pDesmaImg;
	//ImagePanel *m_pDilophImg;

};