export TERM=xterm-256color

# If not running interactively, don't do anything
[[ $- == *i* ]] || return

# Oh-My-Posh
#eval "$(oh-my-posh init bash --config ~/.poshthemes/jandedobbeleer.omp.json)"

# enable bash completion in interactive shells
#if ! shopt -oq posix; then
#  if [ -f /usr/share/bash-completion/bash_completion ]; then
#    . /usr/share/bash-completion/bash_completion
#  elif [ -f /etc/bash_completion ]; then
#    . /etc/bash_completion
#  fi
#fi

# edit by Miguel
if [ "$BASH" ]; then
       if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
            . /etc/bash_completion
       fi
fi

alias usage='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias ls="ls --color"
alias n-autopurge='sudo nala autopurge'
alias n-autoremove='sudo nala autoremove'
alias n-install='sudo nala install'
alias n-purge='sudo nala purge'
alias n-remove='sudo nala remove'
alias n-search='nala search'
alias n-update='sudo nala update'
alias n-upgrade='sudo nala upgrade'
alias n-clean='sudo nala clean'
alias dist-upgrade='sudo apt-get dist-upgrade'
alias full-upgrade='sudo apt full-upgrade'
alias apt-install='sudo apt-get install'
alias apt-update='sudo apt update'
alias apt-upgrade='sudo apt-get upgrade'
alias cls='clear'
alias bleachbit='sudo bleachbit'
alias log-mysql='mysql -u root -p'
alias all-service='sudo systemctl list-unit-files --type service --all'
alias active-service='sudo systemctl | grep running'
alias start-service='sudo systemctl start'
alias stop-service='sudo systemctl stop'
alias status-service='sudo systemctl status'
alias enable-service='sudo systemctl enable'
alias disable-service='sudo systemctl disable'
alias info-service='systemctl list-units --type service --all'
alias info-active-service='systemctl list-units --type service'
alias taskmanager='xfce4-taskmanager' 
alias dropclip='xsel -bc'
alias discompress-rar='unrar x'
alias compress-rar='rar a'
# ¬nombre de fichero comprimido y nombre de fichero a comprimir
alias xampp='sudo /opt/lampp/manager-linux-x64.run'
alias cvenv='mkvirtualenv'
alias luz-azul='redshift -v'
alias luz-normal='redshift -x'
alias eliminar='sudo apt-get autoremove --purge'
alias vmdrop='sudo sync && sudo sysctl -w vm.drop_caches=3'
alias optimizar='watch -n 1 free -m'


# Powerline
if [ -f /usr/share/powerline/bindings/bash/powerline.sh ]; then
    source /usr/share/powerline/bindings/bash/powerline.sh
fi

#Linux Lite Custom Terminal
#echo " "
#LLVER=$(awk '{print}' /etc/llver)

#echo -e "Welcome to $LLVER ${USER}"

#date "+%A %d %B %Y, %T"
#free -m | awk 'NR==2{printf "Memory Usage: %s/%sMB (%.2f%%)\n", $3,$2,$3*100/$2 }'
#df -h | awk '$NF=="/"{printf "Disk Usage: %d/%dGB (%s)\n", $3,$2,$5}'
#echo "Support - https://www.linuxliteos.com/forums/ (Right click, Open Link)"
#echo " "



export WORKON_HOME=$HOME/.virtualenvs
export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export VIRTUALENVWRAPPER_VIRTUALENV_ARGS=' -p /usr/bin/python3 '
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh
. "$HOME/.cargo/env"


eval "$(starship init bash)"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

