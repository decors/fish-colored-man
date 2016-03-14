# colored man pages

Color-enabled man pages plugin for fish-shell.

![ss1](https://raw.githubusercontent.com/decors/various/master/images/colored-man-pages-screenshot.png)

## Install

[Fisherman](https://github.com/fisherman/fisherman)

```fish
fisher install decors/fish-colored-man-pages
```

[Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)

```fish
omf install https://github.com/decors/fish-colored-man-pages
```

## Color options

If you want to change the colors, add the following options to your `config.fish`.

![ss2](https://raw.githubusercontent.com/decors/various/master/images/colored-man-pages-screenshot2.png)

```fish
# Solarized Dark & Green highlight
set -g man_pages_use_ansi_escape_sequence no
set -g man_pages_blink -o red
set -g man_pages_bold -o green
set -g man_pages_standout -b black 93a1a1
set -g man_pages_underline -u 93a1a1
```

```fish
# Solarized Light & Magenta highlight
set -g man_pages_use_ansi_escape_sequence no
set -g man_pages_blink -o red
set -g man_pages_bold -o magenta
set -g man_pages_standout -b white 586e75
set -g man_pages_underline -u 586e75
```

See also `man set_color`, or you can use **ANSI escape sequence**

```fish
set -g man_pages_use_ansi_escape_sequence yes
set -g man_pages_blink "\e[1;38;5;175m"
set -g man_pages_bold "\e[1;38;5;110m"
set -g man_pages_standout "\e[38;5;255m\e[48;5;24m"
set -g man_pages_underline "\e[4;38;5;249m"
```
