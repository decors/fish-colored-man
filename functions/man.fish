function man --description 'Format and display manual pages'
    set -lx MANPATH $__fish_datadir/man $MANPATH ""

    set -q man_blink; and set blink (set_color $man_blink); or set blink (set_color -o red)
    set -q man_bold; and set bold (set_color $man_bold); or set bold (set_color -o 5fafd7)
    set -q man_standout; and set standout (set_color $man_standout); or set standout (set_color 949494)
    set -q man_underline; and set underline (set_color $man_underline); or set underline (set_color -u afafd7)

    set end (printf "\e[0m")

    set -lx LESS_TERMCAP_mb $blink
    set -lx LESS_TERMCAP_md $bold
    set -lx LESS_TERMCAP_me $end
    set -lx LESS_TERMCAP_so $standout
    set -lx LESS_TERMCAP_se $end
    set -lx LESS_TERMCAP_us $underline
    set -lx LESS_TERMCAP_ue $end
    set -lx LESS '-R -s'

    set -lx GROFF_NO_SGR yes # fedora

    command man $argv
end
