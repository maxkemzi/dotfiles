## Custom configuration for .bashrc
## In order to apply it, paste the following code in your .bashrc:
# if [ -f ~/bashrc.sh ]; then
# 	source ~/bashrc.sh
# fi

# Prompt styling
#KANAGAWA_STYLE="\[\033[1m\033[38;2;126;156;216m\]"
TOKYONIGHT_STYLE="\[\033[1m\033[38;2;158;206;106m\]"
RESET="\[\033[0m\]"

PS1="${TOKYONIGHT_STYLE}${debian_chroot:+($debian_chroot)}\u@\h${RESET}:\w\$ "

# Alias for dotfiles git repo
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Tmux
alias tmux-session="tmux attach-session -t main || tmux new-session -s main"
# Start tmux session on Kitty launch
if [ -z "$TMUX" ] && [ "$TERM" = "xterm-kitty" ]; then
	tmux-session
fi
