# kristians zsh config
#PROMPT="%2d%F{magenta}>%f "
autoload -U colors && colors
PS1=" %{$fg[green]%}%~ 
 %{$fg[magenta]%}> % %{$reset_color"


alias vim="nvim"
alias ls="ls -a --color"

ANG=/home/kristian/skolearbeidUiA/semester6/bachelour/angular-chrash/
ADT=/home/kristian/skolearbeidUiA/semester6/bachelour/PowerMarketViewer
FRONT=/home/kristian/skolearbeidUiA/semester6/bachelour/PowerMarketViewer/ADT/Frontend/PowerMarketViewer
BACH=/home/kristian/skolearbeidUiA/semester6/bachelour/

# Load Angular CLI autocompletion.
source <(ng completion script)
