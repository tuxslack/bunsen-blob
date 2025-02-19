bl-obthemes
===========

BLOB is a BunsenLabs GUI Themes Manager
to save or restore various GUI theme settings.

The command to run is bl-obthemes.sh

Save options are for:
		Openbox theme
                FluxBox theme
                Plank theme
		GTK theme
		Icon theme
                Rofi theme
                obmenu-generator
		Conky(s)
		Tint2(s)
		Background (using nitrogen, feh, xfdesktop or pcmanfm)
		Alt Menu (dmenu)
		SDDM / Lightdm
		X configs (.bashrc, .Xresources)
		Terminal emulator config (if available)
		Compositor - Picom (if available)
		Jgmenu theming (if available)

Paths are assumed to be BunsenLabs defaults.

A Screenshot is saved (Windows are hidden briefly so the image
                       is the bare desktop, with any Tint2s
                       or Conkys which are running, and a representive
                       menu and lxappearance open)

User saved themes are stored in ~/.config/bl-obthemes.
Some system preset themes are stored in /usr/share/themes.
The contents of that directory will be displayed to the user
along with any that might be in ~/.config/bl-obthemes.
If a user and preset theme have identical names,
the system preset will be hidden.

****************************************************************************
KNOWN ISSUES:

Virtualbox does not let the guest move the host mouse cursor with xdotool,
so the screenshot may display the theme incorrectly or with poor positioning.
A workaround is to move the cursor to some free space,
and use the "Enter" key in the "Configurations to be saved:" dialog.

Conkys in non-default directories can be saved,
but might not be seen when running bl-conky-manager.

****************************************************************************

Fork of bunsen-blob:
https://github.com/BunsenLabs/bunsen-blob


The bl-obthemes folder is used to install this theme manager on Linux distributions other than Debian.
Tested on Void Linux with OpenBox and FluxBox.

![](https://raw.githubusercontent.com/tuxslack/bl-obthemes/refs/heads/boron/bl-obthemes/bl-obthemes-0.jpeg)


Themes:
https://github.com/tuxslack/bunsen-themes
