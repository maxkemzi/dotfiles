# ...default .bashrc config

# change prompt to match theme

#KANAGAWA_STYLE="\[\033[1m\033[38;2;126;156;216m\]"
TOKYONIGHT_STYLE="\[\033[1m\033[38;2;158;206;106m\]"
RESET="\[\033[0m\]"

PS1="${TOKYONIGHT_STYLE}${debian_chroot:+($debian_chroot)}\u@\h${RESET}:\w\$ "
