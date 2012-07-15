//===== Copyright © 1996-2005, Valve Corporation, All rights reserved. ======//
//
// Purpose: 
//
// $NoKeywords: $
//
//===========================================================================//
#include "cbase.h"
#include "hud.h"
#include "clientmode_sdk.h"
#include "cdll_client_int.h"
#include "iinput.h"
#include "vgui/isurface.h"
#include "vgui/ipanel.h"
#include <vgui_controls/AnimationController.h>
#include "ivmodemanager.h"
#include "BuyMenu.h"
#include "filesystem.h"
#include "vgui/ivgui.h"
#include "hud_basechat.h"
#include "view_shared.h"
#include "view.h"
#include "ivrenderview.h"
#include "model_types.h"
#include "iefx.h"
#include "dlight.h"
#include <imapoverview.h>
#include "c_playerresource.h"
#include <keyvalues.h>
#include "text_message.h"
#include "panelmetaclassmgr.h"
#include "weapon_sdkbase.h"
#include "c_sdk_player.h"
#include "c_weapon__stubs.h"		//Tony; add stubs
#include "glow_outline_effect.h"
#include "viewpostprocess.h"
#include "nb_header_footer.h"

// memdbgon must be the last include file in a .cpp file!!!
#include "tier0/memdbgon.h"

class CHudChat;

ConVar default_fov( "default_fov", "90", FCVAR_CHEAT );
ConVar fov_desired( "fov_desired", "90", FCVAR_USERINFO, "Sets the base field-of-view.", true, 1.0, true, 90.0 );

//IClientMode *g_pClientMode = NULL;

static IClientMode *g_pClientMode[ MAX_SPLITSCREEN_PLAYERS ];
IClientMode *GetClientMode()
{
	ASSERT_LOCAL_PLAYER_RESOLVABLE();
	return g_pClientMode[ GET_ACTIVE_SPLITSCREEN_SLOT() ];
}

// Voice data
void VoxCallback( IConVar *var, const char *oldString, float oldFloat )
{
	if ( engine && engine->IsConnected() )
	{
		ConVarRef voice_vox( var->GetName() );
		if ( voice_vox.GetBool() /*&& voice_modenable.GetBool()*/ )
		{
			engine->ClientCmd( "voicerecord_toggle on\n" );
		}
		else
		{
			engine->ClientCmd( "voicerecord_toggle off\n" );
		}
	}
}
ConVar voice_vox( "voice_vox", "0", FCVAR_ARCHIVE, "Voice chat uses a vox-style always on", false, 0, true, 1, VoxCallback );

//--------------------------------------------------------------------------------------------------------
class CVoxManager : public CAutoGameSystem
{
public:
	CVoxManager() : CAutoGameSystem( "VoxManager" ) { }

	virtual void LevelInitPostEntity( void )
	{
		if ( voice_vox.GetBool() /*&& voice_modenable.GetBool()*/ )
		{
			engine->ClientCmd( "voicerecord_toggle on\n" );
		}
	}


	virtual void LevelShutdownPreEntity( void )
	{
		if ( voice_vox.GetBool() )
		{
			engine->ClientCmd( "voicerecord_toggle off\n" );
		}
	}
};


//--------------------------------------------------------------------------------------------------------
static CVoxManager s_VoxManager;

//Tony; add stubs for cycler weapon and cubemap.
STUB_WEAPON_CLASS( cycler_weapon,   WeaponCycler,   C_BaseCombatWeapon );
STUB_WEAPON_CLASS( weapon_cubemap,  WeaponCubemap,  C_BaseCombatWeapon );

//-----------------------------------------------------------------------------
// HACK: the detail sway convars are archive, and default to 0.  Existing CS:S players thus have no detail
// prop sway.  We'll force them to DoD's default values for now.  What we really need in the long run is
// a system to apply changes to archived convars' defaults to existing players.
//extern ConVar cl_detail_max_sway;
//extern ConVar cl_detail_avoid_radius;
//extern ConVar cl_detail_avoid_force;
//extern ConVar cl_detail_avoid_recover_speed;
// --------------------------------------------------------------------------------- //
// CSDKModeManager.
// --------------------------------------------------------------------------------- //

class CSDKModeManager : public IVModeManager
{
public:
	virtual void	Init();
	virtual void	SwitchMode( bool commander, bool force ) {}
	virtual void	LevelInit( const char *newmap );
	virtual void	LevelShutdown( void );
	virtual void	ActivateMouse( bool isactive ) {}
};

static CSDKModeManager g_ModeManager;
IVModeManager *modemanager = ( IVModeManager * )&g_ModeManager;

// --------------------------------------------------------------------------------- //
// CSDKModeManager implementation.
// --------------------------------------------------------------------------------- //

#define SCREEN_FILE		"scripts/vgui_screens.txt"

void CSDKModeManager::Init()
{
	//g_pClientMode = GetClientModeNormal();

	for( int i = 0; i < MAX_SPLITSCREEN_PLAYERS; ++i )
	{
		ACTIVE_SPLITSCREEN_PLAYER_GUARD( i );
		g_pClientMode[ i ] = GetClientModeNormal();
	}

	
	PanelMetaClassMgr()->LoadMetaClassDefinitionFile( SCREEN_FILE );
}

void CSDKModeManager::LevelInit( const char *newmap )
{
	//g_pClientMode->LevelInit( newmap );

	for( int i = 0; i < MAX_SPLITSCREEN_PLAYERS; ++i )
	{
		ACTIVE_SPLITSCREEN_PLAYER_GUARD( i );
		g_pClientMode[ i ]->LevelInit( newmap );
	}

	// HACK: the detail sway convars are archive, and default to 0.  Existing CS:S players thus have no detail
	// prop sway.  We'll force them to DoD's default values for now.
	//if ( !cl_detail_max_sway.GetFloat() &&
	//	!cl_detail_avoid_radius.GetFloat() &&
	//	!cl_detail_avoid_force.GetFloat() &&
	//	!cl_detail_avoid_recover_speed.GetFloat() )
	//{
	//	cl_detail_max_sway.SetValue( "5" );
	//	cl_detail_avoid_radius.SetValue( "64" );
	//	cl_detail_avoid_force.SetValue( "0.4" );
	//	cl_detail_avoid_recover_speed.SetValue( "0.25" );
	//}
}

void CSDKModeManager::LevelShutdown( void )
{
	//g_pClientMode->LevelShutdown();

	for( int i = 0; i < MAX_SPLITSCREEN_PLAYERS; ++i )
	{
		ACTIVE_SPLITSCREEN_PLAYER_GUARD( i );
		GetClientMode()->LevelShutdown();
	}
}

//-----------------------------------------------------------------------------
// Purpose: 
//-----------------------------------------------------------------------------
ClientModeSDKNormal::ClientModeSDKNormal()
{
}

//-----------------------------------------------------------------------------
// Purpose: If you don't know what a destructor is by now, you are probably going to get fired
//-----------------------------------------------------------------------------
ClientModeSDKNormal::~ClientModeSDKNormal()
{
}

void ClientModeSDKNormal::Init()
{
	BaseClass::Init();
}

void ClientModeSDKNormal::InitViewport()
{
	m_pViewport = new SDKViewport();
	m_pViewport->Start( gameuifuncs, gameeventmanager );
}

ClientModeSDKNormal g_ClientModeNormal[ MAX_SPLITSCREEN_PLAYERS ];

IClientMode *GetClientModeNormal()
{
	ASSERT_LOCAL_PLAYER_RESOLVABLE();
	return &g_ClientModeNormal[ GET_ACTIVE_SPLITSCREEN_SLOT() ];
}

//ClientModeSDKNormal* GetClientModeSDKNormal()
//{
//	Assert( dynamic_cast< ClientModeSDKNormal* >( GetClientModeNormal() ) );
//
//	return static_cast< ClientModeSDKNormal* >( GetClientModeNormal() );
//}


class FullscreenSDKViewport : public SDKViewport
{
private:
	DECLARE_CLASS_SIMPLE( FullscreenSDKViewport, SDKViewport );

private:
	virtual void InitViewportSingletons( void )
	{
		SetAsFullscreenViewportInterface();
	}
};

class ClientModeSDKNormalFullscreen : public	ClientModeSDKNormal
{
	DECLARE_CLASS_SIMPLE( ClientModeSDKNormalFullscreen, ClientModeSDKNormal );
public:
	virtual void InitViewport()
	{
		// Skip over BaseClass!!!
		BaseClass::BaseClass::InitViewport();
		m_pViewport = new FullscreenSDKViewport();
		m_pViewport->Start( gameuifuncs, gameeventmanager );
	}
};

//--------------------------------------------------------------------------------------------------------
ClientModeSDKNormalFullscreen g_FullscreenClientMode;
IClientMode *GetFullscreenClientMode( void )
{
	return &g_FullscreenClientMode;
}


float ClientModeSDKNormal::GetViewModelFOV( void )
{
	//Tony; retrieve the fov from the view model script, if it overrides it.
	float viewFov = 74.0;

	//C_WeaponSDKBase *pWeapon = (C_WeaponSDKBase*)GetActiveWeapon();
	//if ( pWeapon )
	//{
	//	viewFov = pWeapon->GetWeaponFOV();
	//}
	return viewFov;
}

int ClientModeSDKNormal::GetDeathMessageStartHeight( void )
{
	return m_pViewport->GetDeathMessageStartHeight();
}

void ClientModeSDKNormal::PostRenderVGui()
{
}

bool ClientModeSDKNormal::CanRecordDemo( char *errorMsg, int length ) const
{
	C_SDKPlayer *player = C_SDKPlayer::GetLocalSDKPlayer();
	if ( !player )
	{
		return true;
	}

	if ( !player->IsAlive() )
	{
		return true;
	}

	return true;
}

//-----------------------------------------------------------------------------
// Purpose: 
// Input  : *pSetup - 
//-----------------------------------------------------------------------------
void ClientModeSDKNormal::OverrideView( CViewSetup *pSetup )
{
	QAngle camAngles;

	// Let the player override the view.
	C_SDKPlayer *pPlayer = (C_SDKPlayer*)C_BasePlayer::GetLocalPlayer();
	if(!pPlayer)
		return;

	pPlayer->OverrideView( pSetup );

	if( ::input->CAM_IsThirdPerson() )
	{
		Vector cam_ofs;

		::input->CAM_GetCameraOffset( cam_ofs );

		camAngles[ PITCH ] = cam_ofs[ PITCH ];
		camAngles[ YAW ] = cam_ofs[ YAW ];
		camAngles[ ROLL ] = 0;

		Vector camForward, camRight, camUp;
		AngleVectors( camAngles, &camForward, &camRight, &camUp );

		VectorMA( pSetup->origin, -cam_ofs[ ROLL ], camForward, pSetup->origin );

		static ConVarRef c_thirdpersonshoulder( "c_thirdpersonshoulder" );
		if ( c_thirdpersonshoulder.GetBool() )
		{
			static ConVarRef c_thirdpersonshoulderoffset( "c_thirdpersonshoulderoffset" );
			static ConVarRef c_thirdpersonshoulderheight( "c_thirdpersonshoulderheight" );
			static ConVarRef c_thirdpersonshoulderaimdist( "c_thirdpersonshoulderaimdist" );

			// add the shoulder offset to the origin in the cameras right vector
			VectorMA( pSetup->origin, c_thirdpersonshoulderoffset.GetFloat(), camRight, pSetup->origin );

			// add the shoulder height to the origin in the cameras up vector
			VectorMA( pSetup->origin, c_thirdpersonshoulderheight.GetFloat(), camUp, pSetup->origin );

			// adjust the yaw to the aim-point
			camAngles[ YAW ] += RAD2DEG( atan(c_thirdpersonshoulderoffset.GetFloat() / (c_thirdpersonshoulderaimdist.GetFloat() + cam_ofs[ ROLL ])) );

			// adjust the pitch to the aim-point
			camAngles[ PITCH ] += RAD2DEG( atan(c_thirdpersonshoulderheight.GetFloat() / (c_thirdpersonshoulderaimdist.GetFloat() + cam_ofs[ ROLL ])) );
		}

		// Override angles from third person camera
		VectorCopy( camAngles, pSetup->angles );
	}
	else if (::input->CAM_IsOrthographic())
	{
		pSetup->m_bOrtho = true;
		float w, h;
		::input->CAM_OrthographicSize( w, h );
		w *= 0.5f;
		h *= 0.5f;
		pSetup->m_OrthoLeft   = -w;
		pSetup->m_OrthoTop    = -h;
		pSetup->m_OrthoRight  = w;
		pSetup->m_OrthoBottom = h;
	}
}

void ClientModeSDKNormal::DoPostScreenSpaceEffects( const CViewSetup *pSetup )
{
	//extern bool g_bRenderingGlows;
	
	// Render object glows and selectively-bloomed objects
	//g_bRenderingGlows = true;
	g_GlowObjectManager.RenderGlowEffects( pSetup, GetSplitScreenPlayerSlot() );
	//g_bRenderingGlows = false;
}

void ClientModeSDKNormal::Update( void )
{
	//UpdatePostProcessingEffects();
}

void ClientModeSDKNormal::Shutdown()
{
	if ( ASWBackgroundMovie() )
	{
		ASWBackgroundMovie()->ClearCurrentMovie();
	}
}

void ClientModeSDKNormal::LevelInit( const char *newmap )
{
	BaseClass::LevelInit(newmap);
}





