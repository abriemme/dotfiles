# -*- mode: sh -*-   
#
# ~/.bash_aliases
#

#Dotfiles & git
#see http://silas.sewell.org/blog/2009/03/08/profile-management-with-git-and-github/
alias dotfile='git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'

# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias -- -="cd -"

# Shortcuts
alias dl='cd ~/Téléchargements'
alias w='cd ~/Work'
alias g='git'
alias j="jobs"
alias h='history'
alias ne='emacs'
alias e='emacs'
alias s='sublime_text'

#ls aliases
alias ls='ls -Ah --color=auto'
alias sl='ls'
alias ll='ls -l'
alias l='ll'
alias la='ls -la'
alias lr='ls -R'
#show hidden files only
alias l.='ls -d .* '

#Clear the terminal of it's output
alias clear='printf "\ec"'
alias c='clear'

#sudo,fun
alias please='sudo'

#Grep your history
alias hist='history | grep '

#grep color
alias grep='grep --color=auto'

#grep excluding svn and git files, with color syntax and line number
grep='grep -Rin --exclude-dir=.svn --exclude-dir=cache --exclude-dir=.git'

#Reload bash
alias reload='source ~/.bashrc 1>/dev/null'
 
#Clear and view current dir
alias clr='clear;pwd;ls'

#Ping google
alias poogle='ping google.com'

#curl shortcuts
alias jurl='curl -i -H "Accept: application/json"'
