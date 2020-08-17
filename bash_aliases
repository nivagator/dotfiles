alias update='sudo apt update -qq && sudo apt upgrade -y'
alias c='clear'
alias now='date +"%Y-%m-%d %T"'
alias cn='cat -n'
alias hist='history | tail -40'
alias install='sudo apt install -y'
alias myip='ip -br -c a'
alias motd='sudo update-motd'
alias process='ps -aux'
alias mem='free -h'
alias sstatus='sudo systemctl status'
alias srestart='sudo systemctl restart'
alias kill='sudo pkill'
alias cpu='lscpu'
alias disk='df -h'
alias os='cat /etc/os-release'

## Jekyll
# alias jek='bundle exec jekyll serve --host 0.0.0.0'

## Django
# alias pymg='python manage.py'

## asciiquarium - for fun
# alias asciiquarium='/usr/local/bin/asciiquarium'

## python3 alias 
# alias python='/usr/bin/python3'

alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi
