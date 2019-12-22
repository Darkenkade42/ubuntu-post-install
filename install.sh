cd ~
sudo sed -e "/$USER.*/d"  -e "/#includedir \/etc\/sudoers.d/i $USER ALL=(ALL) NOPASSWD:ALL" /etc/sudoers
sudo sed 's/XKBOPTIONS.*/XKBOPTIONS="ctrl:nocaps"/' /etc/default/keyboard
sudo apt install git
git clone https://github.com/Darkenkade42/ubuntu-post-install
cd ubuntu-post-install
sudo ./after-effects -C ./config/dark.yml
