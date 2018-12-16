#!/usr/bin/env bash
# If not running interactively, don't do anything
[ -z "$PS1" ] && return

export PLATFORM=$(uname -s)

for file in ~/.bash{_prompt,_aliases,_functions,_logout}
do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done
unset file;

# Exports
# ------------------------------------------------------------------------------
export EDITOR="vim"

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

export BLOCKSIZE=1k

export HISTSIZE=2000
export HISTFILESIZE=${HISTSIZE}
export HISTIGNORE="&:[bf]g:c:clear:history:exit:q:pwd:wget *:* --help:ls \
  :ll:la:cd:exit:clear:history"
export HISTCONTROL=ignoreboth 

export MANPAGER="less -X"

# Options
# ------------------------------------------------------------------------------
# Append to the history file rather then overwriting it.
shopt -s histappend;

# Autocorrect typos in path names when using the `cd` command.
shopt -s cdspell

# Do not attempt to search the PATH for possible completions when
# completion is attempted on an empty line.
shopt -s no_empty_cmd_completion

# Check the window size after each command and, if necessary, update
# the values of `LINES` and `COLUMNS`.
shopt -s checkwinsize

# Save multi-line commands as one entry
shopt -s cmdhist

# Include filenames beginning with a "." in the filename expansion.
shopt -s dotglob

# Automatically prepend `cd` to directory names.
shopt -s autocd 2> /dev/null

# Use extended pattern matching features.
shopt -s extglob

# Match filenames in a case-insensitive fashion when performing
# filename expansion.
shopt -s nocaseglob

# recursive globbing like cd **/foo
shopt -s globstar
