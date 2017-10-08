# Configuration
#
# Variables used in m4 templates
user-email = brunohcastro@gmail.com
user-name = Bruno Castro
user-nick = $(USER)
colorscheme = gruvbox-dark-hard

# Userspace
#
user/desktop: wm/i3 \
              applications
	- pacaur -S --noconfirm --needed xorg-xsetroot

user/environments/golang: ~/.env-golang
	- sudo pacman -S --noconfirm --needed \
	    go \
	    go-tools
	- go get -u github.com/rogpeppe/godef
	- go get -u github.com/nsf/gocode
	- curl https://glide.sh/get | sh

user/environments/rust: ~/.env-rust
	- curl https://sh.rustup.rs -sSf \
	    | sh -s -- --no-modify-path

user/environments/node:
	- echo NODE

# Window Manager
#

wm/i3: stow/dotfile/i3 wm/support wm/locker
	- sudo -v
	- pacaur -S --noconfirm --noedit --needed \
	    i3-gaps \
	    i3blocks

wm/support: applications/scrot applications/dunst
	- pacaur -S --noconfirm --noedit --needed \
	    compton \
	    rofi \
	    volumeicon \
	    unclutter-xfixes-git \
	    hsetroot \
	    volumeicon \
	    playerctl \
	    network-manager-applet \
	    pavucontrol \
	    xautolock

wm/locker: ~/.bin/my-favorite-things-locker /etc/systemd/system/my-favorite-things-locker.service applications/scrot
	- sudo systemctl enable my-favorite-things-locker.service
	- cp templates/dotfiles/my-favorite-things/lock-icon.png
	~/.my-favorite-things/lock-icon.png
	- chmod +x ~/.bin/my-favorite-things-locker
	- sudo pacman -S --noconfirm --needed \
	    i3lock \
	    imagemagick


# Applications
#

# Groups

applications: applications/appearance \
              applications/documents \
              applications/browsers \
              applications/graphics \
              applications/filesystem \
              applications/development \
              applications/utils

applications/appearance: stow/dotfile/gtk
	- sudo pacaur -S --noconfirm --needed \
	    arc-gtk-theme \
	    qt5-styleplugins \
	    qt5ct \
	    lxappearance \
	    papirus-icon-theme-git

applications/documents:
	- sudo pacaur -S --noconfirm --needed \
	    libreoffice \
	    zathura \
	    zathura-pdf-mupdf \
	    texlive-most \
	    xpdf \
	    ghostscript \
	    evince-no-gnome

applications/browsers:
	- pacaur -S --noconfirm --needed \
	    chromium \
	    firefox \
	    google-chrome

applications/graphics:
	- sudo pacman -S --noconfirm --needed \
	    inkscape \
	    gimp \
	    feh

applications/filesystem: stow/dotfile/ranger
	- sudo pacaur -S --noconfirm --needed \
	    pcmanfm \
	    simple-mtpfs \
	    xarchiver \
	    dropbox \
			ranger

applications/development: applications/emacs applications/docker
	- pacaur -S --noconfirm --noedit --needed \
	    android-studio \
	    webstorm \
	    visual-studio-code \
	    the_silver_searcher

applications/chating:
	- pacaur -S --noconfirm --noedit --needed \
	    telegram-desktop-bin \
	    slack-desktop

applications/utils: applications/password-store applications/redshift
	- pacaur -S --noconfirm --needed \
	    qbittorrent \
	    copyq \ #parcelite
	    tmux \
	    variety \
	    youtube-dl \
	    vokoscreen \
	    screenfetch

# Specific

applications/dunst: stow/dotfile/dunst
	- sudo pacman -S --noconfirm --needed dunst

applications/redshift: stow/dotfile/redshift
	- pacaur -S --noconfirm --needed redshift-gtk

applications/emacs: git/emacs.d
	- sudo pacman -S --noconfirm --needed \
	    emacs \
	    mu \
	    offlineimap \
	    w3m

applications/mpd: ~/.config/mpd/mpd.conf ~/.config/systemd/user/mpd.service
	- sudo pacman -S --noconfirm --needed mpd mpc
	- mkdir -p ~/.mpd/playlists
	- systemctl --user daemon-reload
	- systemctl --user enable mpd.service
	- systemctl --user start mpd.service

applications/ncmpcpp: ~/.ncmpcpp/bindings ~/.ncmpcpp/config
	- sudo pacman -S --noconfirm --needed ncmpcpp

applications/mpv:
	- sudo pacman -S --noconfirm --needed mpv

applications/weechat:
	- sudo pacman -S --noconfirm --needed \
	    python2 \
	    python2-pip \
	    weechat
	- pip2 install websocket-client
	- mkdir -p ~/.weechat/python/autoload
	- curl -o ~/.weechat/python/autoload/wee_slack.py
"https://raw.githubusercontent.com/rawdigits/wee-slack/master/wee_slack.py"

applications/taskwarrior: ~/.taskrc
	- sudo pacman -S --noconfirm --needed \
	    task

applications/terminal: stow/dotfile/xresources
	- sudo pacaur -S --noconfirm --noedit --needed \
	    rxvt-unicode-patched \
	    urxvt-perls \
	    oh-my-zsh-git

applications/scrot:
	- sudo pacman -S --noconfirm --needed scrot
	- mkdir -p ~/Pictures/screenshots

applications/docker:
	- sudo pacman -S --noconfirm --needed \
	    docker \
	    docker-compose \
	    lxc
	- sudo gpasswd -a $(USER) docker

applications/password-store: git/password-store
	- sudo pacman -S --noconfirm --needed pass

# Core
#

core: core/utils \
      core/aur-helper \
      core/fonts \
      core/xorg

core/utils:
	sudo pacman -S --noconfirm \
		zsh \
		ctags \
		git \
		openssh \
		unzip \
		unrar \
	  xdg-user-dirs \
	  xdg-user-dirs-update \
	  stow \
		xsel

core/fonts:
	pacaur -S --noconfirm --needed \
	  libxft \
		tamzen-font-git \
		ttf-bitstream-vera \
		ttf-dejavu \
		ttf-fira-mono \
		ttf-fira-sans \
		ttf-ms-fonts \
		ttf-roboto \
		ttf-ubuntu-font-family \
		nerd-fonts-complete


core/aur-helper: core/aur-helper/cower
	cd tmp \
		&& curl -L -O "https://aur.archlinux.org/cgit/aur.git/snapshot/pacaur.tar.gz" \
		&& tar -xvf pacaur.tar.gz \
		&& cd pacaur \
		&& makepkg -sri --noconfirm

core/aur-helper/cower: clean/tmp
	- gpg --recv-keys 487EACC08557AD082088DABA1EB2638FF56C0C53 # Dave Reisner, cower maintainer
	- mkdir -p tmp \
			&& cd tmp \
			&& curl -L -O "https://aur.archlinux.org/cgit/aur.git/snapshot/cower.tar.gz" \
			&& tar -xvf cower.tar.gz \
			&& cd cower \
			&& makepkg -sri --noconfirm

core/xorg: /etc/X11/xorg.conf.d/20-intel.conf /etc/X11/xorg.conf.d/00-keyboard.conf ~/.drirc
	sudo pacman -S --noconfirm --needed \
		xf86-input-libinput \
	  xf86-input-synaptics \
		xorg-server \
		xorg-xinit \
		xorg-xrandr \
		xorg-xrdb \
	  xorg-xdm \
	  xorg-xev \
	  xorg-setxkbmap \
		xterm
	- sudo systemctl enable xdm.service

# System
#

system/common: system/network \
               system/sound

system/notebook: /etc/modprobe.d/i915.conf /etc/thinkfan.conf
	- sudo pacman -S --noconfirm \
			acpi \
			ethtool \
			powertop \
			rfkill \
			tlp \
			x86_energy_perf_policy \
	    xorg-xbacklight \
	    xfce4-power-management \
	    thinkfan \
	    acpi_call \
	    tp_smapi
	- sudo systemctl enable tlp.service tlp-sleep.service
	- sudo systemctl start tlp.service tlp-sleep.service
	- sudo rmmod thinkpad_acpi
	- sudo modprobe thinkpad_acpi
	- sudo systemctl enable thinkfan
	- sudo systemctl start thinkfan

system/sound: /etc/modprobe.d/blacklist.conf /etc/modprobe.d/snd_hda_intel.conf
	- pacaur -S --noconfirm --needed \
	    pamixer \
	    pulsemixer \
	    pulseaudio \
	    alsa-utils \
	    pulseaudio-bluetooth
	- pulseaudio -D

system/bluetooth:
	- sudo pacman -S --noconfirm --needed \
	    bluez \
	    bluez-utils
	- sudo systemctl enable bluetooth.service
	- sudo systemctl start bluetooth.service

system/network:
	- sudo pacman -S --noconfirm --needed networkmanager
	- sudo systemctl enable NetworkManager.service
	- sudo systemctl start NetworkManager.service

system/intel:
	- sudo pacman -S --noconfirm --needed \
		  xf86-video-intel \
	    libva-intel-driver \ #libva-intel-driver-g45-h264
      lib32-libva-intel-driver \
		  libvdpau-va-gl \
      libvdpau \
      lib32-libvdpau

system/nvidia:
	- sudo pacman -S --noconfirm --needed \
	    nvidia \
	    nvidia-utils \
	    nvidia-settings \
	    libxnvctrl \
	    lib32-nvidia-utils

system/hybrid-graphics: system/intel system/nvidia
	- sudo pacman -S --noconfirm --needed \
	    bumblebee \
	    primus \
	    lib32-primus \
	    bbswitch

# Device setups
#
device/common: core \
               system/common

device/common/notebook: device/common \
                        system/notebook \
	- sudo pacman -S --noconfirm --needed \


device/desktop: device/common
	- pacaur -S --noconfirm --noedit --needed \


device/imac: device/common
	- echo "TODO"

device/asus-k555: core \
									system/common \
                  system/notebook \
                  system/hybrid-graphics \
                  user/desktop \
                  user/environments/nodejs
	- pacaur -S --noconfirm --noedit --needed \
	    aic94xx-firmware \
	    wd719x-firmware

device/acer-vx5: device/common/notebook
	- echo "TODO"

device/macbook-air: device/common/notebook
	- echo "TODO"

device/surface: device/common/notebook
	- echo "TODO"



# Task utils
#

/etc/vconsole.conf: templates/etc/vconsole.conf
	- sudo pacman -S --noconfirm terminus-font
	- sudo cp ./templates/vconsole.conf /etc/vconsole.conf

/etc/modprobe.d/%: templates/etc/modprobe.d/*
	- sudo cp templates/etc/modprobe.d/$* $@

/etc/%: templates/etc/*
	- sudo cp templates/etc/$* $@

/etc/X11/xorg.conf.d/%.conf: templates/etc/X11/xorg.conf.d/*
	- sudo cp templates/etc/X11/xorg.conf.d/$*.conf $@

/etc/systemd/system/%: templates/etc/systemd/system/*
	- sudo mkdir -p $(@D)
	- $(macrocmd) \
	    templates/etc/systemd/system/$* \
	    | sudo dd of=$@

~/.bin/%: templates/dotfiles/bin/*
	- mkdir -p $(@D)
	- $(macrocmd) \
	    templates/dotfiles/bin/$* \
	    > $@
	- chmod +x $@

clean/tmp:
	- mkdir -p tmp
	- rm -rf tmp/*

stow/etc/%:
	- sudo stow -t /etc -d etc/ $*

stow/dotfile/%:
	- stow -t $(HOME) -d dotfiles/ $*

git/emacs.d:
	[ -d ~/.emacs.d ] \
	  && git -C ~/.emacs.d pull \
	  || git clone https://github.com/brunohcastro/emacs ~/.emacs.d

git/password-store:
	[ -d ~/.password-store ] \
	  && git -C ~/.password-store pull \
	  || git clone ssh://git@git.dastro.com.br/bruno/pass ~/.password-store
