function man --description 'Format and display manual pages'
    set -lx MANPATH {$__fish_datadir,$fisher_config,$fisher_home}/man $MANPATH ""
    
    set -q colored_man_pages_blink; and set blink $colored_man_pages_blink; or set blink (set_color -o red)
    set -q colored_man_pages_bold; and set bold $colored_man_pages_bold; or set bold (set_color -o 5fafd7)
    set -q colored_man_pages_standout; and set standout $colored_man_pages_standout; or set standout (set_color 949494)
    set -q colored_man_pages_underline; and set underline $colored_man_pages_underline; or set underline (set_color -u afafd7)
    set end (printf "\e[0m")
    
    # less
    set -lx LESS_TERMCAP_mb $blink
    set -lx LESS_TERMCAP_md $bold
    set -lx LESS_TERMCAP_me $end
    set -lx LESS_TERMCAP_so $standout
    set -lx LESS_TERMCAP_se $end
    set -lx LESS_TERMCAP_us $underline
    set -lx LESS_TERMCAP_ue $end
    set -lx LESS '-R'
    
    set option $argv[1]
    switch "$option"
        case "--help" "-h"
            command man --help
            printf "\n"
            printf "* fish-shell colored man pages plugin\n\n"
            printf "  You can override colors.\n"
            printf "  Add the following options to your \e[1m`config.fish`\e[0m.\n"
            printf "\n"
            printf "  colored_man_pages_blink     : blinking\n"
            printf "  colored_man_pages_bold      : bold\n"
            printf "  colored_man_pages_standout  : standout mode\n"
            printf "  colored_man_pages_underline : underline\n"
            printf "\n"
            printf "  Sample using set_color:\n"
            printf "    set -g colored_man_pages_bold (set_color -o red)\n"
            printf "\n"
            printf "  Sample using ANSI color sequence:\n"
            printf "    set -g colored_man_pages_bold (printf \"\\e\[1;38;5;175m\")\n"
        case "*"
            command man $argv
    end
end