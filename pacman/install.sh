#!/bin/sh
#
# Pacman
#
echo "pacman installs"
# Ask for the administrator password upfront.
#sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
#while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we have updated repositories.
pacman -Suy

# Install X/ and other tools
pacman -S --noconfirm \
  base-devel \
  xorg-server \
  xorg-apps \
  intel-ucode \
  xclip \
  mesa \
  xf86-input-synaptics \
  wpa_supplicant
  iwctl \
  sudo \
  ntp \
  ttf-ubuntu-font-family \
  ttf-fira-mono \
  ttf-fira-code \
  ttf-fira-code-mono \
  awesome-terminal-fonts \

# Install WM and other tools
pacman -S --noconfirm \
  i3-gaps zsh \
  alacritty \
  tmux \
  upower \
  udiskie \
  udisks2 \
  acpi \
  exfat-utils \
  xdg-user-dirs \
  rofi \
  sxiv \
  dunst \
  openvpn

# Audio and Video
pacman -S  --noconfirm \
  acpid \
  alsa-utils \
  pulseaudio-alsa \
  pavucontrol \
  mpv

# Miscellaneous
pacman -S --noconfirm \
  htop \
  aria2 \
  httpie \
  youtube-dl \
  p7zip \
  unrar \
  unzip \
  tree \
  speedtest-cli \
  keybase \
  aspell \
  aspell-pt \
  aspell-en \
  maim \
  ranger \
  gnupg \
  tldr \
  cups \
  cups-pdf \
  arandr \
  recordmydesktop \
  gsimplecal

# Other applications
pacman -S --noconfirm \
  firefox \
  transmission-cli \
  zathura \
  zathura-pdf-mupdf \

# Dev and Sysadmin applications
pacman -S --noconfirm \
  git \
  git-lfs \
  terraform \
  ansible \
  ansible-lint \
  yamllint \
  pwgen \
  docker \
  docker-compose \
  openssh \
  grep \
  freerdp \
  vim \
  fzf \
  python-markdown \
  poetry \
  net-tools \
  ipcalc \
  kubectl \
  nmap \
  rclone \
  vagrant \
  qemu-headless \
  ebtables \
  dnsmasq \
  bridge-utils \
  libvirt

exit 0
