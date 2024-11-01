HISTFILE=~/.histfile
HISTSIZE=3000
SAVEHIST=3000

zstyle :compinstall filename '/home/waitstop/.zshrc'

autoload -Uz compinit
compinit

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# oh-my-posh init
eval "$(oh-my-posh init zsh --config ~/dotfiles/oh-my-posh/catppuccin_mocha.omp.json)"

# Plugins
source ~/dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
# source ~/dotfiles/zsh/plugins/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Zoxide init
eval "$(zoxide init --cmd cd zsh)"

# pnpm
export PNPM_HOME="/home/waitstop/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
