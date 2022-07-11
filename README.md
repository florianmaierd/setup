## Vim & Terminal
```bash 
# Install Packages
sudo apt install ripgrep bat fzf curl wget zsh

# Install Vim Plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Copy .vimrc
curl https://raw.githubusercontent.com/florianmaierd/setup/master/.vimrc > ~/.vimrc

# Copy .zshrc
curl https://raw.githubusercontent.com/florianmaierd/setup/master/.zshrc > ~/.zshrc

# Install Vim Plugins
vim +'PlugInstall --sync' +qa
```
