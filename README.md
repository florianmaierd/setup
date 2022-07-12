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

# Copy .vimrc
curl https://raw.githubusercontent.com/florianmaierd/setup/master/.vimrc > ~/.vimrc

# Install oh my zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy .zshrc
curl https://raw.githubusercontent.com/florianmaierd/setup/master/.zshrc > ~/.zshrc

# Install Vim Plugins
vim +'PlugInstall --sync' +qa

# Enable Night Light
gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled true

# Install Virtualization Software
sudo dnf install @virtualization -y

# Start libvirtd on boot
sudo systemctl enable libvirtd.service

# Add user to virt groups
sudo useradd -g $USER libvirt-kvm
sudo useradd -g $USER libvirt

# Download iso
# https://www.parrotsec.org/download/
# Create Virtual Machine Kali Linux
# 1. run virt-manager
# 2. create new machine
# 3. select from local (iso)
# 4. 2048 MB & 2 cores

