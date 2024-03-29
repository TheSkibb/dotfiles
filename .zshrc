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

#alias vim="nvim"
alias vim=/home/kristian/Programs/nvim-linux64/bin/nvim
alias ls="ls -a --color"
alias i3lock="i3lock --color=990099"
alias rn=". ranger"
alias py="python3"
alias pdb="python3 -m pdb"
alias jup="jupyter notebook ."
alias xcopy="xclip -selection c"
alias kali="docker run -it kalilinux/kali-rolling"

source $HOME/.config/scripts/zsh

export NVM_DIR="$HOME/.nvm"
export PATH=$PATH:/usr/local/go/bin
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# Load Angular CLI autocompletion.
#source <(ng completion script)

