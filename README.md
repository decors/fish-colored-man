# colored man

Color-enabled man plugin for fish-shell.

![ss1](https://raw.githubusercontent.com/decors/various/master/images/colored-man-pages-screenshot.png)

This plugin to define the *man* function.

## Install

[Fisher](https://github.com/jorgebucaran/fisher)

```fish
fisher install decors/fish-colored-man
```

[Oh My Fish](https://github.com/oh-my-fish/oh-my-fish)

```fish
omf install https://github.com/decors/fish-colored-man
```

## Color options

If you want to change the colors, add the following options to your `config.fish`.

![ss2](https://raw.githubusercontent.com/decors/various/master/images/colored-man-pages-screenshot2.png)

```fish
# Solarized Dark & Green highlight
set -g man_blink -o red
set -g man_bold -o green
set -g man_standout -b black 93a1a1
set -g man_underline -u 93a1a1
```

```fish
# Solarized Light & Magenta highlight
set -g man_blink -o red
set -g man_bold -o magenta
set -g man_standout -b white 586e75
set -g man_underline -u 586e75
```

See also `man set_color`.
