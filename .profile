# set PATH so it includes user's private bin directories
export VISUAL=vim
export EDITOR='/usr/bin/nvim'
export MYVIMRC="~/.vimrc"
export MYNVIMRC="~/.nvimrc"
export NVIM_PLUGS="~/.config/nvim/init.vim"
# export VNOTES="~/vnotes"
export INPUTRC="~/.inputrc"
export DISPLAY=":0.0"
export DOCKER_HOST="tcp://0.0.0.0:2375"
export GOROOT=$HOME/go1.X
export GOPATH=$HOME/go
set -o vi
export MYFUNCTIONS=~/.bash_functions
export VIRTENVWRAPPER="/usr/local/bin/virtualenvwrapper.sh"
export LOCAL="./local"
export MANPATH="/home/linuxbrew/.linuxbrew/share/man:$MANPATH"
export INFOPATH="/home/linuxbrew/.linuxbrew/share/info:$INFOPATH"
if [[ ! -f /usr/share/terminfo/s/screen.xterm-256color ]]; then
	export TERM="xterm-256color"
fi

# PATH SETTINGS
export PATH='/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin':"$PATH"
export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
#export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
export PATH=$PATH:$GOROOT/bin
export PATH="$HOME/.composer/vendor/bin:$HOME/bin:$HOME/.local/bin:/mnt/c/Program Files (x86)/Xming:$PATH"

# STARTUP COMMANDS
cd ~
clear
printf "Loading Profile... "
printf "\n"
printf " Aliases... "
	source ~/.bash_aliases
printf "Done\n"
printf " Functions... "
	source ~/.bash_functions
printf "Done\n"
printf "\n"
printf "Finshed loading profile\n"
printf "\n"
today

export PATH="$HOME/.cargo/bin:$PATH"
if [ -e /home/Wampin/.nix-profile/etc/profile.d/nix.sh ]; then . /home/Wampin/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
#source $VIRTENVWRAPPER
