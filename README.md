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

# Troubleshooting

According to Gemini, the Neovim AppImage uses FUSE (Filesystem in Userspace) to mount its internal contents to a temporary directory. This temporary directory is usually located in `/tmp` and is automatically unmounted and deleted once the application process ends (i.e. when Neovim is closed). On some clusters, including GCP, running `df -h` might show the `nvim` partition as being full. Also, running `df -i` would show that its inodes are exhausted. In such cases, one can launch Neovim by extracting the AppImage and running it from the extracted directory.

Assuming the AppImage has been extracted to the current directory, one can run Neovim as follows:
```bash
./nvim-linux-x86_64.appimage --appimage-extract
./squashfs-root/AppRun --version
./squashfs-root/AppRun
ln -sf squashfs-root/AppRun ~/.local/bin/nvim
```
