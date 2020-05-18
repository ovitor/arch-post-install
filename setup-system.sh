#!/bin/sh

# This script should be run via curl:
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ovitor/arch-post-install/master/install.sh)"

NEWUSER=vitor

update_already_installed_packages() {
	echo "updating packages already installed"
	pacman -Suy --no-confirm 
}

setup_oficial_packages() {
	echo "installing a lot of packages from official repositories"
	pacman -S --no-confirm \
		acpi \
		acpid \
		alacritty \
		alsa-utils \
		ansible \
		aria2 \
		aspell \
		aspell-en \
		aspell-pt \
		base-devel \
		bind-tools \
		cups \
		cups-pdf \
		dhcpcd \
		diction \
		dockd \
		docker \
		docker-compose \
		dunst \
		exfat-utils \
		firefox \
		flameshot \
		freerdp \
		fzf \
		git \
		git-lfs \
		gnupg \
		grep \
		htop \
		httpie \
		i3-gaps \
		intel-ucode \
		ipcalc \
		iputils \
		keybase \
		kubectl \
		maim \
		mpv \
		net-tools \
		netctl \
		nmap \
		ntp \
		openssh \
		p7zip \
		poetry \
		pwgen \
		ranger \
		rclone \
		rofi \
		rsync \
		screen \
		speedtest-cli \
		sudo \
		sxiv \
		terraform \
		tldr \
		tmux \
		transmission-cli \
		tree \
		ttf-fira-mono \
		ttf-fira-sans \
		udiskie \
		unrar \
		unzip \
		upower \
		vim \
		weechat \
		wpa_supplicant \
		xclip \
		xdg-user-dirs \
		xf86-input-synaptics \
		xf86-video-intel \
		xorg-apps \
		xorg-server \
		youtube-dl \
		zathura \
		zathura-pdf-mupdf \
		zsh \
}

setup_new_user() {
	echo "setup new user"
	useradd -ms /bin/zsh $NEWUSER
	cat "# will be replaced by dotfiles" > /home/$NEWUSER/.zshrc
	chown $NEWUSER:$NEWUSER /home/$NEWUSER/.zshrc
	chmod	644 /home/$NEWUSER/.zshrc
	gpasswd -a $NEWUSER docker video input wheel
}

main () {
	update_already_installed_packages
	setup_oficial_packages
	setup_new_user
	echo "finish"
}

main "$@"
