#!/bin/sh
#
# Trizen
#
echo "trizen installs"
# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Install tools

# Make sure we have pacaur installed
if ! which trizen > /dev/null; then
  echo "trizen not found, installing"
  mkdir -p /tmp/trizen
  git clone https://aur.archlinux.org/trizen.git /tmp/trizen
  cd /tmp/trizen/ && makepkg --skippgpcheck --install --needed
else
  echo "trizen found, continue"
fi

# Updating repos
trizen -Suy

# Installing tools
trizen -S --noconfirm \
  dive \
  lazydocker \
  inxi \
  kind-bin \
  openvpn-update-resolv-conf-git \
  salt-lint \
  libinput-gestures \
  samsung-printers \
  slack-desktop \
  warsaw-bin
  xflux \
  # tor-browser \
  # ycmd-git \ # for vim
  # vue-cli \
