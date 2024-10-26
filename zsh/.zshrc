eval "$(oh-my-posh init zsh --config ~/dotfiles/oh-my-posh/catppuccin_mocha.omp.json)"

HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000

zstyle :compinstall filename '/home/waitstop/.zshrc'

autoload -Uz compinit
compinit

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# Autosuggestions
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Syntax highlighting
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh