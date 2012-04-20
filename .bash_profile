
# Re-use ssh agent across sessions
keychain -q
. ~/.keychain/`hostname -s`-sh

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

