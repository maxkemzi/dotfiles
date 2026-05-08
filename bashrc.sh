## Custom configuration for .bashrc
## In order to apply it, paste the following code in your .bashrc:
# if [ -f ~/bashrc.sh ]; then
# 	source ~/bashrc.sh
# fi

# Prompt styling
KANAGAWA_WAVE_STYLE="\[\033[1m\033[38;2;255;93;98m\]"
KANAGAWA_DRAGON_STYLE="\[\033[1m\033[38;2;196;116;110m\]"
TOKYONIGHT_NIGHT_STYLE="\[\033[1m\033[38;2;247;118;142m\]"
NIGHTFOX_STYLE="\[\033[1m\033[38;2;201;79;109m\]"
ROSE_PINE_STYLE="\[\033[1m\033[38;2;235;111;146m\]"
EVERFOREST_HARD_STYLE="\[\033[1m\033[38;2;230;126;128m\]"
GRUVBOX_MATERIAL_HARD_STYLE="\[\033[1m\033[38;2;234;105;98m\]"
NORDIC_STYLE="\[\033[1m\033[38;2;208;135;112m\]"
KANAGAWA_PAPER_STYLE="\[\033[1m\033[38;2;196;116;110m\]"
RESET="\[\033[0m\]"

PS1="${KANAGAWA_WAVE_STYLE}${debian_chroot:+($debian_chroot)}\u@\h${RESET}:\w\$ "

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
export SUDO_EDITOR=/opt/nvim-linux-x86_64/bin/nvim
