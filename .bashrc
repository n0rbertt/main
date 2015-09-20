alias vi='vim'
alias ll='ls -hal'
alias rm='rm -i'
alias cp='cp -i'
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'
alias mv='mv -i'
alias netstat='netstat -tulanp'
alias c='clear'
alias ll='ls -lah'
alias la='ls -A'
alias l='ls -CF'
alias cd..='cd ..'
alias ps='export PS1="\[\e[36m\]\\$\[\e[m\] "'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias bc='bc -l'
alias mkdir='mkdir -pv'
alias diff='colordiff'
#alias mount='mount |column -t'
alias h='history'
alias j='jobs -l'
alias update='yum -y update'
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
alias cpuinfo='lscpu'
alias wget='wget -c'
alias df='df -H'
alias du='du -ch'
alias ls='ls --color=auto'
alias h='ps -ef | grep http'
alias cc='/root/tools/clear'
alias hr='service httpd restart'
alias cls='printf "\033c"'
alias ip="ifconfig | grep -n2 eth0 | grep 'inet addr' | cut -d : -f2 | grep -E -o '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}'"
# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

HISTSIZE=10000
HISTFILESIZE=20000


# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

export PS1="\[\e[00;36m\]\u\[\e[0m\]\[\e[00;31m\]@\[\e[0m\]\[\e[00;36m\]\h\[\e[0m\]\[\e[00;37m\]:\[\e[0m\]\[\e[00;32m\]\w\[\e[0m\]\[\e[00;37m\]\\$ \[\e[0m\]"


# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
