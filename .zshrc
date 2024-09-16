# kristians zsh config
#
#PROMPT="%2d%F{magenta}>%f "
autoload -U colors && colors
#PS1=" $fg[green]%4d%
 #%{$fg[magenta]%}> % %{$reset_color"
 # Load version control information
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
alias i3lock="i3lock --color=990099"
alias rn=". ranger"
alias py="python3"
alias pdb="python3 -m pdb"
alias jup="jupyter lab ."
alias clip="xclip -selection clipboard"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m "
alias gd="git diff"
alias mute="bindsym XF86AudioMute exec amixer -D pulse set Master 1+ toggle"

#screenshot for sway (area), for whole screen just use grim
alias screenshot="slurp | grim -g - $(xdg-user-dir PICTURES)/$(date +'screenshot_%Y-%m-%d-%H%M%S.png')"

export EDITOR=~/Programs/nvim-linux64/bin/nvim

bindkey -e
bindkey '^K' backward-delete-char

bindkey "^[[7~" beginning-of-line
bindkey "^[[8~" end-of-line

bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
#Load scripts
source $HOME/.config/scripts/zsh

#Greeting
cowsay -f tux $(date)


