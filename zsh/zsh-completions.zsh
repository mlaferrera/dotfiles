# Fix for zsh-completions on OS X
# https://unix.stackexchange.com/questions/126785/zsh-completion-of-brew-formulas
fpath=(/usr/local/share/zsh-completions $fpath)
