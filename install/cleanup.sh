#!/usr/bin/zsh
source ~/.zinit/bin/zinit.zsh
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit
source ~/.zshrc
zinit self-update
