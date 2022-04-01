#!/bin/sh
 
# Add additional repositories
wget -O- https://updates.signal.org/desktop/apt/keys.asc | gpg --dearmor > signal-desktop-keyring.gpg
cat signal-desktop-keyring.gpg | sudo tee -a /usr/share/keyrings/signal-desktop-keyring.gpg > /dev/null && echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/signal-desktop-keyring.gpg] https://updates.signal.org/desktop/apt xenial main' |\
  tee -a /etc/apt/sources.list.d/signal-xenial.list #signal-desktop

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" > /etc/apt/sources.list.d/vscode.list' #VSCode

# Get the latest package lists
apt update
 
# Get DEB files
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

# Install from Repo
apt install zsh -y
apt install code -y
apt install htop -y
#apt install gnome-tweak-tool -y
apt install simplescreenrecorder -y
apt install signal-desktop -y
apt install mpv -y
apt install telegram-desktop -y
apt install timeshift -y
apt install vlc -y
apt install qt5-style-kvantum -y
#apt install qt5ct -y
apt install calibre -y
#apt install kodi -y
#apt install flameshot -y
#apt install discord -y #
#apt install gnome-shell-extensions -y
#apt install delue-gtk deluge -y
#apt install gnome-clocks -y
apt install libreoffice-qt5 -y
apt install latte-dock -y
apt install plasma-wayland-protocols -y
apt install plasma-workspace-protocols -y
#apt install gnome-shell-extensions-gpaste -y
apt install kodi-inputstream-adaptive -y
apt purge snapd -y
apt purge gedit -y
#remove uneeded software:
apt purge pim-sieve-editor -y
apt purge evince -y
apt purge com.github.donadigo.eddy -y
apt purge packagekit -y
apt purge plasma-discover-common -y
apt purge dragonplayer -y
apt purge akregator -y
apt purge gnome-boxes -y
apt purge konqueror -y
apt purge ktnef -y
apt purge kmail -y
apt purge eog -y
apt purge totem -y
apt purge simple-scan -y
apt purge juk -y
apt purge kdepim-runtime -y
apt purge gnome-calculator -y
apt purge gnome-contacts -y
apt purge libreoffice-gtk3 -y
apt purge libreoffice-math -y
apt purge plasma-thunderbolt -y
apt purge gnome-screenshot -y
apt purge gnome-accessibility-themes -y
apt purge kup-backup -y
apt purge gnome-user-docs -y

#remove uneeded dependencies:
apt autoremove -y
apt install dolphin -y

# Install DEB files
#dpkg -i google-chrome-stable_current_amd64.deb

# Clean up DEB files
#rm -f google-chrome-stable_current_amd64.deb

# Install requirements for kodi-netflix

#apt install python3-pip -y
#pip install pycryptodomex #(or pip3)
#pip install websocket-client #(or pip3)
 
#perform a system upgrade

apt upgrade -y

#remove any un-needed packages

apt autoremove -y

# Final message
echo Malware has been installed, uploading your nudes to Linus in t-minus 2s.
 
# Exit the script
exit 0
