### NEEDS CATEGORIZED ###
alias cpdots='ls -a | egrep '^.[a-zA-Z]+.+[^@]$' | xargs cp -t dot'
alias pand='ConvertMd.sh'
alias wampserv='WampServerConnect.sh'
alias run='~/bin/run_test.sh'
alias xlaunch='XLaunch.exe'
alias artcat='workon art_catalog_py36; cd ~/projects/Art_Catalog/'
########################

### DOT MAINTENANCE ###
alias dot="ls -A | grep '^\.'"
alias dotmv="ls -A | grep '^\.' | xargs -n 1 -p mv -t ~/dotfiles"
alias dotln="ls -A ~/dotfiles | sed 's:^\(\..\+\)[^/]\n$:dotfiles/\1:g' | xargs -n 1 -p ln -s -t ~/"
#######################

### DOCKER ###
alias docker-machine='/mnt/c/Program\ Files/Docker\ Toolbox/docker-machine.exe 2>/dev/null'
##############

### XML ###
alias nxml='New_XML_Doc'
###########

### GIT ALIASES ###
alias branch='git branch'
###################

### IPYTHON ALIASES ###
alias eip='clear; nvim ~/.ipython/profile_default/ipython_config.py'
#######################

### PHPUNIT ALIASES ###
alias runtest='clear && phpunit tests/'
#######################

### SYSTEM ALIASES ###
alias dot='ls -A | grep "^\."'
alias clock='~/bin/clock.sh'
alias ma='Make_Alias'
alias rec='Recycle' # ALIASES RECYCLE FUNCTION IN .BASH_FUNCTIONS
alias rmd=remove_directory
alias ls='ls --classify --tabsize=0 --literal --show-control-chars --human-readable --group-directories-first'
alias e='fc'
######################

### CONFIGURATION MAINTENANCE ###
alias ea='nvim ~/.bash_aliases'
alias sa='source ~/.bash_aliases'

alias ep='nvim ~/.profile'
alias sp='source $HOME/.profile'

alias ef='nvim ~/.bash_functions'
alias sf='source ~/.bash_functions'
#################################

### PROGRAM ALIASES ###
alias pand='ConvertMd.sh'
alias wampserv='WampServerConnect.sh'
alias apache='apache.sh'
#######################

### PTPYTHON ALIAS ###
alias pt='ptpython'
######################

### DIRECTORY ALIASES  ###
alias sch='cd ~/documents/projects/school/'
alias gz='cd ~/documents/projects/GroundZero/'
##########################

### FUNCTION ALIASES ###
alias np=New_Python_Project
########################

### PYTHON PROJECT ALIASES  ###
alias ptk='clear; cd ~/projects/Python/prompt-toolkit/; source ./bin/activate; source $LOCAL/alias.sh'
alias pyx='clear; cd ~/projects/Python/Exercises/; source ./bin/activate; source $LOCAL/alias.sh;'
alias pyr='clear; cd ~/projects/Python/pyramid/; source ./bin/activate; source $LOCAL/alias.sh;'
alias runtest='clear && phpunit tests/'
###############################

