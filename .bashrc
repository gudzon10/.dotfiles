# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# set -e

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Include *.bashrc settings
for file in ~/.bashrc.d/*.bashrc; do
    if [ -r "$file" ]; then
        source $file
        echo "Loaded: $file"
    fi
done
unset file

# Include local settings
[ -r ~/.localrc ] && . ~/.localrc

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
