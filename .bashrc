force_color_prompt=yes
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

function cd {
    builtin cd "$@" && ls 
}
