export EDITOR="vi"
export LESS='-i -M -R'
export PAGER=less
export HIGHLIGHTER=/usr/share/source-highlight/src-hilite-lesspipe.sh
if [ -f ${HIGHLIGHTER} ]; then
    export LESS_TERMCAP_mb=$'\E[01;31m'      # Begins blinking.
    export LESS_TERMCAP_md=$'\E[01;31m'      # Begins bold.
    export LESS_TERMCAP_me=$'\E[0m'          # Ends mode.
    export LESS_TERMCAP_se=$'\E[0m'          # Ends standout-mode.
    export LESS_TERMCAP_so=$'\E[00;47;30m'   # Begins standout-mode.
    export LESS_TERMCAP_ue=$'\E[0m'          # Ends underline.
    export LESS_TERMCAP_us=$'\E[01;32m'      # Begins underline.
    export LESSOPEN=/usr/share/source-highlight/src-hilite-lesspipe.sh
fi
