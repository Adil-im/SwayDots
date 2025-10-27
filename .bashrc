#.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Common tools
alias ls='ls --color=auto '
alias ff='yazi'
alias rm="rm -rf"
alias ..="cd .."
alias sleep='sudo zzz'
alias day='brightnessctl set 100%'
alias ntb='brightnessctl set 60%'
alias night='brightnessctl set 40%'
alias tar='tar -xvzf'
alias yt-dl='yt-dlp -4 -x --audio-format mp3 --audio-quality 0' 
alias config='vim ~/.config/sway/config'
alias code='vim dev' 

## Error code - 2_ ERROR_CODES: 0,emergency_1,alerts_2,critical_3,errors_4,warning_5,notice_6,Info_7,,debug.
alias joe="journalctl -p 2" 

# More Speed
alias soba='source .bashrc'
alias viba='vim .bashrc'
alias bld='build'
alias vido='vim TO-DO.md'
alias clearh='cat /dev/null > ~/.bash_history'
alias aud='audacious'
alias fire='firefox'
alias cpbash='cp .bashrc ~/github/dotfiles/.bashrc'

# XBPS Stuff
alias xi='sudo xbps-install'
alias xr='sudo xbps-remove'
alias xupdate='sudo xbps-install -Su'
alias xclear='sudo xbps-remove -O'
alias xq='sudo xbps-query' # to grep a package just - "xq -l | grep <package-name>"

# DNF Stuff
alias di='sudo dnf install'
alias dr='sudo dnf remove'
alias dupdate='sudo dnf upgrade'
alias dupgrade='sudo dnf upgrade'
alias dclear='sudo dnf autoremove'
alias dclean='sudo dnf clean all'
alias dsync='sudo dnf distro-sync' 
alias dlist='sudo dnf list installed' 


# Git Speed
alias status='git status'
alias commit='git commit'
alias branch='git branch'
alias push='git push'
alias checkout='git checkout'
alias add='git add .'
alias pull='git pull'
alias clone='git clone'
alias browse='gh browse'

# Ricing stuff
alias pipes='pipes.sh -t 3'
alias pipe='pipes.sh'
alias vim='nvim'

# Bash Prompt
#PS1='\[\e[38;2;100;79;234m\]\w\$ '
PS1=" \[\e[00;34m\]λ \W \[\e[0m\]"

export EDITOR=nvim
export VISUAL=nvim

# Auto startx after login
if [[ -z $DISPLAY ]] && [[ $(tty) == /dev/tty1 ]];
then
	exec startx
fi

# PATHS
# Created by `pipx` on 2025-08-16 10:02:48
export PATH="$PATH:/home/adil/.local/bin"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/bin:$PATH"
#. "$HOME/.cargo/env"
