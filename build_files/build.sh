#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1


# setup hyprland from COPR
dnf5 -y copr enable solopasha/hyprland
dnf5 -y install			\
	hyprland			\
	hyprpaper			\
	hypridle			\
	hyprlock			\
    xdg-desktop-portal-hyprland \
dnf5 -y copr disable solopasha/hyprland

# more desktop-environment utils
dnf5 -y install \
	kitty \
	sddm \
	pipewire \
	brightnessctl \
    waybar \
    rofi-wayland \
    grim \
    slurp \
    wl-clipboard \
    cliphist \
    swaync \
    playerctl \
    lxqt-policykit \
    satty \
    pamixer \
    gwenview \
    okular
    
systemctl enable podman.socket
systemctl --global enable hyprpanel.service
