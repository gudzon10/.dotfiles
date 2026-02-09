### Bash history block conf
# append to the history file, don't overwrite it
shopt -s histappend
# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize
shopt -s cdspell
shopt -s cmdhist
HISTSIZE=5000
HISTFILESIZE=5000
# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth:erasedups
HISTIGNORE="ls"

if [ -z "$PROMPT_COMMAND" ]
then
    PROMPT_COMMAND="history -a"
else
    # TODO: при каждом source ~/.bashrc добавляет history. Исправить.
    PROMPT_COMMAND="$PROMPT_COMMAND; history -a"
fi
