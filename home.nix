{ config, pkgs, ...}:

{
    home.username = "abxijth";
    home.homeDirectory = "/home/abxijth";
    home.stateVersion = "26.05";
    programs.bash = {
        enable=true;
	profileExtra = ''
	    if [ -z "$WAYLAND_DISPLAY" ] && [ "$XDG_VTNR" = 1 ]; then
 	        exec dbus-run-session hyprland
	    fi
	'';
    };

    home.file.".config/hypr".source = ./config/hypr;
    home.file.".config/waybar".source = ./config/waybar;
    home.file.".config/kitty".source = ./config/kitty;
    home.file.".config/swaync".source = ./config/swaync;
    home.file.".config/rofi".source = ./config/rofi;

}
