# Fix for zsh-completions on OS X
# https://unix.stackexchange.com/questions/126785/zsh-completion-of-brew-formulas
# You may also need to force rebuild `zcompdump`:
#
#   rm -f ~/.zcompdump; compinit
fpath=(/usr/local/share/zsh-completions $fpath)
compinit -i
