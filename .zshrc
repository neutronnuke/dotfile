#setopt autocd
#setopt interactivecomments
#setopt magicequalsubst
#setopt nonomatch
#setopt notify
#setopt numericglobsort
#setopt promptsubst
#setopt MENU_COMPLETE
#setopt AUTO_LIST
#setopt COMPLETE_IN_WORD
#
#autoload -Uz vcs_info # enable vcs_info
#precmd () { vcs_info }
#zstyle ':vcs_info:*' formats ' %s(%F{#bd93f9}%b%f)'

#PS1='%F{#bd93f9}%n%f@%m %F{#50fa7b}%~%f$vcs_info_msg_0_ $ '

#PROMPT="%m%n%d"
#export ZSH=$HOME/.oh-my-zsh/
#export PATH=$PATH:/home/ipws/.local/bin
#ZSH_THEME="gentoo"
#plugins=(git zsh-interactive-cd)

#source $ZSH/oh-my-zsh.sh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $HOME/Documents/Source/zsh-syntax-highlighting/zsh-syntax-highlighting.sh
#source /usr/share/fzf/key-bindings.zsh

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
#setopt autocd extendedglob nomatch notify
#unsetopt beep
#bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/ipws/.zshrc'
#PS1="%n@%m %1~:"
PROMPT='%n@%m %B%~%b $ '

[[ -f ~/.zshrc-personal ]] && . ~/.zshrc-personal

# bun completions
#[ -s "/home/ipws/.bun/_bun" ] && source "/home/ipws/.bun/_bun"

# bun
#export BUN_INSTALL="$HOME/.bun"
#export PATH="$BUN_INSTALL/bin:$PATH"

## [Completion]
## Completion scripts setup. Remove the following line to uninstall
[[ -f /home/ipws/.dart-cli-completion/zsh-config.zsh ]] && . /home/ipws/.dart-cli-completion/zsh-config.zsh || true
## [/Completion]

