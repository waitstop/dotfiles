# sddm
Add wayland-session to start hyprland with custom config
from dotfiles/sddm to /usr/share/wayland-sessions
# alacritty
Install zsh, oh-my-posh. Set it default shell
Add configs and theme to alacritty:
[general]
import = [
    "~/dotfiles/alacritty/config.toml",
    "~/dotfiles/alacritty/catppucin-mocha.toml"
]
Add zsh config folder:
vim ~/.zshenv
ZDOTDIR=~/dotfiles/zsh

