cd ~
sudo sed -i -e "/$USER.*/d"  -e "/#includedir \/etc\/sudoers.d/i $USER ALL=(ALL) NOPASSWD:ALL" /etc/sudoers
sudo sed -i 's/XKBOPTIONS.*/XKBOPTIONS="ctrl:nocaps"/' /etc/default/keyboard
sudo apt install git
git clone https://github.com/Darkenkade42/ubuntu-post-install
git clone https://github.com/Darkenkade42/dotfiles
cd ubuntu-post-install
sudo ./after-effects --autopilot -C ./config/dark.yml

# Make clangd-8 the default clangd
sudo update-alternatives --install /usr/bin/clangd clangd /usr/bin/clangd-8 100

# Set keyboard repeat rate
gsettings set org.gnome.desktop.peripherals.keyboard repeat-interval 75
gsettings set org.gnome.desktop.peripherals.keyboard delay 175

# Regular dotfiles, stow assumes parent directory with no target
stow .
