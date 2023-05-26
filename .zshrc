# kristians zsh config
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
alias ls="ls -a --color"
alias i3lock="i3lock --color=990099"
alias rn=". ranger"

ANG=/home/kristian/skolearbeidUiA/semester6/bachelor/angular-chrash/
ADT=/home/kristian/skolearbeidUiA/semester6/bachelor/PowerMarketViewer
FRONT=/home/kristian/skolearbeidUiA/semester6/bachelor/PowerMarketViewer/ADT/Frontend/PowerMarketViewer
BACH=/home/kristian/skolearbeidUiA/semester6/bachelor/

# Load Angular CLI autocompletion.
source <(ng completion script)

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
