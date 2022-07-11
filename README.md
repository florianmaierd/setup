## Vim & Terminal

### Install Packages
```bash
sudo apt install ripgrep bat fzf curl wget zsh
```

### Copy .zshrc
```bash
curl https://raw.githubusercontent.com/florianmaierd/setup/master/.zshrc > ~/.zshrc
```

### Install Vim Plug (Plugin Manager)
```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

### Copy .vimrc
```bash
curl https://raw.githubusercontent.com/florianmaierd/setup/master/.vimrc > ~/.vimrc
```

### Install Plugins in vim
```bash
vim
:PlugInstall
```
