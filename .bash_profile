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

# Append to the Bash history file, rather than overwriting it
shopt -s histappend

# Autocorrect typos in path names when using `cd`
shopt -s cdspell

# If possible, add tab completion for many more commands
[ -f /etc/bash_completion ] && source /etc/bash_completion
