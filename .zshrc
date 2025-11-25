#
# kristians zsh config
#

autoload -U colors && colors
autoload -Uz vcs_info
precmd() { vcs_info }

# Format the vcs_info_msg_0_ variable
zstyle ':vcs_info:git:*' formats 'on %b'

# Set up the prompt (with git branch name)
setopt PROMPT_SUBST

PROMPT='$fg[green]${PWD/#$HOME/~} $fg[yellow]${vcs_info_msg_0_}
%{$fg[magenta]%}> %{$reset_color'

alias vim="nvim"
#alias vim=~/Programs/nvim-linux64/bin/nvim

alias ls="ls -a --color"
alias py="python3"
alias pdb="python3 -m pdb"
alias jup="jupyter lab ."

alias gs="git status"
alias ga="git add"
alias gc="git commit -m "
alias gd="git diff"

# clipboard x11
#alias clip="xclip -selection clipboard"

# clipboard wayland
alias clip="wl-copy"

bindkey -e

bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
#Load scripts
source $HOME/.config/scripts/zsh

#Greeting
#cowsay -f tux $(date)


