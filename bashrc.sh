## Custom configuration for .bashrc
## In order to apply it, paste the following code in your .bashrc:
# if [ -f ~/bashrc.sh ]; then
# 	source ~/bashrc.sh
# fi

# Prompt styling
KANAGAWA_WAVE_STYLE="\[\033[1m\033[38;2;228;104;118m\]"
KANAGAWA_DRAGON_STYLE="\[\033[1m\033[38;2;196;116;110m\]"
TOKYONIGHT_NIGHT_STYLE="\[\033[1m\033[38;2;247;118;142m\]"
NIGHTFOX_STYLE="\[\033[1m\033[38;2;201;79;109m\]"
ROSE_PINE_STYLE="\[\033[1m\033[38;2;235;111;146m\]"
RESET="\[\033[0m\]"

PS1="${ROSE_PINE_STYLE}${debian_chroot:+($debian_chroot)}\u@\h${RESET}:\w\$ "

# Alias for dotfiles git repo
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME"

# Tmux
alias tmux-session="tmux attach-session -t main || tmux new-session -s main"
# Start tmux session on Kitty launch
if [ -z "$TMUX" ] && [ "$TERM" = "xterm-kitty" ]; then
	tmux-session
fi

# Preserve command history
HISTCONTROL=ignoredups:erasedups
shopt -s histappend
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Make neovim a default sudo editor
export SUDO_EDITOR=/opt/nvim-linux64/bin/nvim
