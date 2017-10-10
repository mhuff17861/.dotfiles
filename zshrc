# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi


alias ls='ls --color=auto'
alias dirs='dirs -v'
alias dd='dd status=progress'

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
