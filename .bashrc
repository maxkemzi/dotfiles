# ...default .bashrc config

# change prompt to match kanagawa-wave theme
BOLD_BLUE="\[\033[1m\033[38;2;126;156;216m\]"
RESET="\[\033[0m\]"

PS1="${BOLD_BLUE}${debian_chroot:+($debian_chroot)}\u@\h${RESET}:\w\$ "
