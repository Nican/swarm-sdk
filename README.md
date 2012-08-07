The Swarm SDK Template implements the Orange Box SDK Template into Alien Swarm, and nothing more. It is the ideal swarm-free base from which to build your own new game.

This mod only requires swarm_base! (Meaning you can make a true mod using Alien Swarm).

### Usage
build/ includes the compiled build and assets for your new mod. Check out to Steam/steamapps/SourceMods/swarmsdktemplate

src/ includes the full source code. Check out anywhere you want.

Open swarm_sdk_template.sln to get started.

Launch the mod with -override_vpk until I release it with vpk's.

### Requirements
* Alien Swarm (free)
* * http://store.steampowered.com/app/630/
* Microsoft Visual Studio 2010
* * http://www.microsoft.com/visualstudio/en-us/products/2010-editions/visual-cpp-express

### New Features
* Added shader source code.
* The old 'Create a game' VGUI panel is back.
* Player list VGUI panel is back (Mute players).
* Added cl_righthand.
* No longer needs swarmframescheme.res, swarmscheme.res or swarmserverbrowserscheme.res.
* Added a credits page vgui panel.

Fixes
* Fixed the color scheme for the dedicated server browser.
* Fixed voice communication (now it works!).
* Fixed close to all errors in the console.
* Fixed weapon animations on player models.
* Fixed VGUI panel: Mouse Settings.
* Fixed bullet decals not showing.
* Fixed "drop" convar not working (drop active weapon).
* Fixed team menu not popping up after MOTD.
* Fixed "fov_desired" convar missing.
* emoved leftovers in the code from the mod 'Somme'.
* Fixed ERRORNAME in death notices. (Thanks to DaFox)

Improvements
* New main menu.
* New scoreboard.
* New keyboard layout.
* Main menu music is now sound/ui/gamestartup1.wav again.
* English localization files revamped.
* File structure revamped.
* Movement cvars unlocked (sv_accelerate, sv_friction etc.).
* All asw_* and tilegen_* commands are now disabled.
* Added swarmsdktemplate.fgd.
* Added Steam and application icon.

Remaining Bugs
* No crosshair.
* No html motd.
* Mouse pointer is hidden when not inside any vgui panel.
* No voice icon when talking (but it works, check with voice_loopback 1)
* Improved version of http://www.moddb.com/mods/alien-swarm-sdk-template-conversion

Thanks to, Tony Sergi, DaFox, c_b_fofep, Doplhur and Valve.