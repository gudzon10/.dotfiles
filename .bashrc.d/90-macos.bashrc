# mac specific staff

if [ ! $(uname -s) = "Darwin" ]; then
    return
fi

echo "MacOS staff enabled."

alias ls='gls -F --group-directories-first --color=auto'
alias du='gdu'

# Bash completions for macos
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

# git-prompt
if [ -f "$HOMEBREW_PREFIX/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR=$HOMEBREW_PREFIX/opt/bash-git-prompt/share
    GIT_PROMPT_ONLY_IN_REPO=1
    source $HOMEBREW_PREFIX/opt/bash-git-prompt/share/gitprompt.sh
fi

# Размер файлов и папок на заданную глубину
dus () {
    if [ $# -gt 1 ]; then
        depth=$2
    else
        depth=1
    fi

    # du -bah --max-depth=$depth $1 | sort -h
    du -bah --max-depth=$depth $1 2> >(grep -v 'Operation not permitted') | sort -h
}
