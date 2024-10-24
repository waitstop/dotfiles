eval "$(oh-my-posh init zsh --config ~/dotfiles/oh-my-posh/catppuccin_mocha.omp.json)"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/waitstop/.zshrc'

autoload -Uz compinit
compinit

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

# End of lines added by compinstall
