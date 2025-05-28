#
# ~/.bashrc
#

# If not running interactively, don't do anything
#[[ $- != *i* ]] && return

PS1='\u@\h \w]\$ '

#alias ls='lsd -al'
#alias la='lsd -a'
#alias ll='lsd -l'

#alias cleanup='sudo pacman -Rns $(pacman -Qtdq)'
#alias yayclean='yay -Rns $(yay -Qtdq)'

#alias sda1='udisksctl mount -b /dev/sda1'
#alias sda2='udisksctl mount -b /dev/sda2'

#alias fzf='fzf --height 40% --reverse --border sharp'

export FZF_DEFAULT_OPTS='--color=fg:#f8f8f2,bg:#282a36,hl:#bd93f9 --color=fg+:#f8f8f2,bg+:#44475a,hl+:#bd93f9 --color=info:#ffb86c,prompt:#50fa7b,pointer:#ff79c6 --color=marker:#ff79c6,spinner:#ffb86c,header:#6272a4'

export FZF_DEFAULT_COMMAND="find . -path '*/\.*' -type d -prune -o -type f -print -o -type l -print 2> /dev/null | sed s/^..//"

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# source all the alias and functions
source ~/.bash/functions
source ~/.bash/alias

# PS1='┌( \h )─[\e[1;33m \w\e[1;0m $(git rev-parse --is-inside-work-tree >/dev/null 2>&1 && echo $(git_info) || echo '')]\n└─|> '

#PS1='┌( \u )─[$(if [[ "$PWD" = "$HOME" ]]; then echo " \e[1;36m \e[1;0m"; else echo "\w"; fi) $(git rev-parse --is-inside-work-tree >/dev/null 2>&1 && echo $(git_info) || echo "")]\n└─ $(check_distro)|> '


# User specific environment
#if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
#    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
#fi
#export PATH

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

unset rc
#source ~/.local/share/blesh/ble.sh
