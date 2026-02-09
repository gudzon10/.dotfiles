# PS1 bash prompt config
RED="\[\e[31m\]"
GREEN="\[\e[32m\]"
GREENBOLD="\[\e[1;32m\]"
BLUE="\[\e[34m\]"
BLUEBOLD="\[\e[1;34m\]"
ENDCOLOR="\[\e[0m\]"

# NEW_LINE_SYMBOL=" "
HOST_MARKER="${GREEN}${ENDCOLOR}"
NEW_LINE_SYMBOL="->"
PROMPT_START="${HOST_MARKER}${GREENBOLD}\u@\h${ENDCOLOR}:${BLUEBOLD}\w${ENDCOLOR}"
PROMPT_END=" $\n${BLUEBOLD}${NEW_LINE_SYMBOL}${ENDCOLOR} "
PS1="${PROMPT_START}${PROMPT_END}"

# bash-git-prompt https://github.com/magicmonty/bash-git-prompt.git
# git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
# Надо проверять установку всех скриптов, и инсталлировать их, если отсутствуют.
GIT_PROMPT_THEME=Single_line_NoExitState_Gentoo
GIT_PROMPT_START="${PROMPT_START}"
GIT_PROMPT_END="${PROMPT_END}"
if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOME/.bash-git-prompt/gitprompt.sh
fi
