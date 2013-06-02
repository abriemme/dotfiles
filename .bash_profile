#
# ~/.bash_profile
#

#Bash Prompt
export PS1='[\u@\h \W]\$ '

# Load the shell dotfiles:
for file in ~/.{bash_exports,bash_aliases,bash_functions,bash_completion}; do
    [ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# History 
shopt -s histappend
export HISTTIMEFORMAT='%Y-%m-%d %H:%M:%S - '
PROMPT_COMMAND='history -n;history -a'
HISTSIZE=100000
HISTFILESIZE=100000

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion

