# Neovim Configuration
Neovim configuration using lazy.nvim as the plugin manager

# Getting started

1. Remove existing neovim configuration
```
nvim_config="nvim"
rm -rf ~/.config/$nvim_config ~/.local/share/$nvim_config ~/.local/state/$nvim_config ~/.cache/$nvim_config
```
2. Install neovim by downloading the AppImage
```
wget https://github.com/neovim/neovim/releases/download/nightly/nvim-linux-x86_64.appimage
```
3. Set up permissions for the Neovim AppImage and create a symbolic link
```
chmod +x nvim-linux-x86_64.appimage
ln -sf nvim-linux-x86_64.appimage nvim
```
4. Create the neovim configuration directory and enter it.
```
mkdir -p ~/.config/nvim
chmod 700 ~/.config/nvim
cd ~/.config/nvim/
```
5. Clone the neovim configuration repository
```
git clone https://github.com/nagarajankarthik/neovim.git .
```
6. Install dependencies
```
nvim init.lua
```

