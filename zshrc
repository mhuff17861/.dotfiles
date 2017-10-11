# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

alias ls='ls --color=auto'
alias ll='ls -l --color=auto'
alias la='ls -la --color=auto'
alias dirs='dirs -v'
alias dd='dd status=progress'
alias tmux='TERM=screen-256color-bce tmux'
alias tmux_main='tmux attach -t main || tmux new -s main'

function vim() {
    args=()
    for i in $@; do
        if [[ -h $i ]]; then
            args+=`readlink $i`
        else
            args+=$i
        fi
    done

    /usr/bin/vim -p "${args[@]}"
}

export EDITOR='vim'
