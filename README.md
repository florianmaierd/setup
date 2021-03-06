## Fedora 36 Installation
```bash
# update and upgrade
sudo dnf update -y

# install vim
sudo dnf install vim-enhanced -y

# color theme dark
gsettings set org.gnome.desktop.interface color-scheme prefer-dark

# install zsh
sudo dnf install zsh -y

# install chsh to switch default shell
sudo dnf install util-linux-user -y

# set zsh default shell (restart needed)
sudo chsh -s $(which zsh) && chsh -s $(which zsh)

# Install Packages
sudo dnf install ripgrep bat fzf curl wget -y

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install Vim Plugins
vim +'PlugInstall --sync' +qa

# Enable Night Light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# Install Virtualization Software
sudo dnf install @virtualization -y

# Start libvirtd on boot
sudo systemctl enable libvirtd.service

# Add user to virt groups
sudo groupadd libvirt
sudo usermod -a -G libvirt $USER
sudo useradd -g $USER libvirt-kvm
sudo useradd -g $USER libvirt

# Install rust and cargo
sudo dnf install rust cargo

# Install alacritty
sudo dnf install cmake freetype-devel fontconfig-devel libxcb-devel libxkbcommon-devel g++
sudo dnf install alacritty

# Install picom
sudo dnf install picom

# Install arandr (for screen alignment)
sudo dnf install arandr

# Install i3
sudo dnf install i3

# Install vscode
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
sudo dnf check-update
sudo dnf install code

# Copy config files
git clone https://github.com/florianmaierd/setup.git
cd setup
mv .vimrc ~/
mv .zshrc ~/
mv .config/* ~/.config
# move image files
sudo mv images /usr/share/

# Download iso
# https://www.parrotsec.org/download/
# Create Virtual Machine Kali Linux
# 1. run virt-manager
# 2. create new machine
# 3. select from local (iso)
# 4. 2048 MB & 2 cores

# Reboot
```

## Manual Install VMs
