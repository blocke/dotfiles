
# Re-use ssh agent across sessions
eval `keychain --eval -q`

# Lazy
alias key-load-bitbucket="ssh-add -t 10800 ~/.ssh/bitbucket.id_rsa"
alias key-load-github="ssh-add -t 10800 ~/.ssh/github.id_rsa"
alias key-clear="ssh-add -D"

# include .bashrc if it exists
if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

