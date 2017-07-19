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
# Maximum number of history lines in memory
export HISTSIZE=50000
# Maximum number of history lines on disk
export HISTFILESIZE=500000
# Ignore duplicate lines
export HISTCONTROL=ignoredups:erasedups
# When the shell exits, append to the history file 
#  instead of overwriting it
shopt -s histappend

# After each command, append to the history file 
#  and reread it
export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"
# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion


