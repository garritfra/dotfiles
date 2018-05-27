force_color_prompt=yes
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

PS1="\W 🔥🦄 "

function cd {
    builtin cd "$@" && ls 
}
