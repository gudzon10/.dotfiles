# Self-added usable aliases
alias dc='docker compose'
alias clip='xclip -selection clipboard'
alias ls='ls -F --group-directories-first --color=auto'
alias la='ls -A'
alias l='ls -CF'
alias ll='ls --time-style=+"%d.%m.%Y %H:%M" -hAlFtr --color=auto'
alias lls='ls --time-style=+"%d.%m.%Y %H:%M" -hAlFSr --color=auto'
alias allupdate='sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y && flatpak update -y'
alias glog="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
#alias php='docker run --rm -it -u `id -u`:`id -g` --volume `pwd`:/app -w /app php-cli:8.2 php $@'
alias grep='grep --color=auto'
alias df='df -Ph | column -t'
alias sb='source ~/.bash_profile'
