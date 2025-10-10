# Arch Linux Dotfiles

<div align="center">

![Arch Linux](https://img.shields.io/badge/Arch%20Linux-1793D1?logo=arch-linux&logoColor=fff&style=for-the-badge)
![Maintained](https://img.shields.io/badge/Maintained%3F-yes-green.svg?style=for-the-badge)
![Fish Shell](https://img.shields.io/badge/Fish-black?style=for-the-badge&logo=fishshell&logoColor=white)
![Zsh](https://img.shields.io/badge/Zsh-black?style=for-the-badge&logo=zsh&logoColor=white)
![Neovim](https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white)
![Tmux](https://img.shields.io/badge/Tmux-1BB91F?style=for-the-badge&logo=tmux&logoColor=white)
![Stars](https://img.shields.io/github/stars/ind4skylivey/dotfiles?style=for-the-badge)
![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)

</div>

---

My personal configuration files for Arch Linux featuring a customized DWM setup with modern terminal tools and development environments.

## System Information

- **OS:** Arch Linux (CachyOS)
- **Kernel:** 6.17.0-3-cachyos
- **WM:** DWM (Dynamic Window Manager)
- **Shell:** Fish / Zsh with Starship prompt
- **Terminal:** Kitty / Alacritty
- **Editor:** Neovim / Doom Emacs
- **Multiplexer:** Tmux

## Included Configurations

### Shell & Terminal
- **Fish** - Modern shell with syntax highlighting and autosuggestions
- **Zsh** - Powerful shell with Zinit plugin manager and Powerlevel10k
- **Starship** - Fast, minimal prompt for any shell
- **Kitty** - GPU-accelerated terminal emulator
- **Alacritty** - Blazing fast, OpenGL terminal emulator
- **Tmux** - Terminal multiplexer configuration

### Window Management
- **DWM** - Suckless dynamic window manager (source code included)
- **Rofi** - Application launcher and window switcher
- **Picom** - Compositor for transparency and effects
- **Dunst** - Lightweight notification daemon

### Development Tools
- **Neovim** - Hyperextensible Vim-based text editor
- **Doom Emacs** - Configuration framework for Emacs
- **Micro** - Modern terminal-based text editor

### System Utilities
- **Fastfetch** - System information tool
- **Btop** - Resource monitor
- **Yazi** - Terminal file manager
- **Zellij** - Modern terminal workspace
- **Cava** - Audio visualizer

### Scripts
- **lockscreen.sh** - Custom screen locking script
- **lockscreen-setup.sh** - One-time setup for lockscreen wallpapers

## Installation

### Quick Install (Recommended)

**One-line installation on a fresh Arch Linux system:**

```bash
bash <(curl -fsSL https://raw.githubusercontent.com/ind4skylivey/dotfiles/main/bootstrap.sh)
```

Or clone and run the installer:

```bash
git clone https://github.com/ind4skylivey/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

The automated installer will:
- Install all required packages (with confirmation prompts)
- Back up your existing configurations
- Create symlinks using GNU Stow
- Set up plugin managers (Fisher, TPM, Zinit)
- Optionally compile DWM and install Doom Emacs

**Note:** After installation, run `./lockscreen-setup.sh` to configure your lockscreen wallpapers.

---

### Manual Installation

If you prefer manual control, follow these steps:

#### Prerequisites

```bash
# Install required packages
sudo pacman -S fish zsh neovim kitty alacritty tmux rofi picom dunst btop starship git stow

# Install AUR packages (optional)
yay -S fastfetch yazi-git zellij
```

#### Clone Repository

```bash
git clone https://github.com/ind4skylivey/dotfiles.git ~/dotfiles
cd ~/dotfiles
```

#### Deploy Configurations

##### Method 1: Using GNU Stow (Recommended)

```bash
# Install GNU Stow
sudo pacman -S stow

# Stow all configs
cd ~/dotfiles
stow .
```

##### Method 2: Manual Symlinks

```bash
# Backup your existing configs
mv ~/.config/fish ~/.config/fish.backup
mv ~/.config/nvim ~/.config/nvim.backup

# Create symlinks
ln -s ~/dotfiles/.config/* ~/.config/
ln -s ~/dotfiles/.doom.d ~/.doom.d
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
cp ~/dotfiles/lockscreen.sh ~/lockscreen.sh
chmod +x ~/lockscreen.sh
```

#### Post-Installation

#### Fish Shell
```bash
# Set Fish as default shell
chsh -s $(which fish)

# Install Fisher plugin manager
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
```

#### Zsh
```bash
# Zinit will auto-install on first launch
# Plugins (zsh-autosuggestions, zsh-syntax-highlighting, etc.) are managed by Zinit
# They are NOT included in the repository and will be downloaded automatically
# Restart shell after installation
```

#### Doom Emacs
```bash
# Install Doom Emacs
git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.config/emacs
~/.config/emacs/bin/doom install

# Sync configuration
~/.config/emacs/bin/doom sync
```

#### Tmux
```bash
# Install TPM (Tmux Plugin Manager)
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

# Inside tmux, press: prefix + I to install plugins
```

#### DWM
```bash
# Compile and install DWM
cd ~/.config/dwm
sudo make clean install

# Note: DWM includes custom patches and configuration
# Review config.h before installation
```

## Key Features

- **Unified theme** across terminal, editors, and window manager
- **Efficient keybindings** optimized for productivity
- **Plugin management** for Fish (Fisher), Zsh (Zinit), and Tmux (TPM)
- **Modern tooling** with fast, rust-based utilities
- **Version controlled** for easy deployment across machines
- **Clean repository** - plugins managed by package managers, not committed to git

## Customization

Feel free to fork and customize these dotfiles to your needs. Key configuration files:

- Shell prompts: `starship.toml`
- Fish config: `.config/fish/config.fish`
- Zsh config: `.config/zsh/.zshrc`
- Neovim: `.config/nvim/init.lua` (or `init.vim`)
- Tmux: `.config/tmux/tmux.conf`
- DWM: `.config/dwm/config.h`

## Updates

To update your dotfiles:

```bash
cd ~/dotfiles
git pull origin main
```

## License

Feel free to use and modify these configurations as you see fit.

## Credits

Configuration inspired by the amazing Arch Linux and dotfiles community.
