# Enable skipping words with ctrl+arrows
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5B' forward-word
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5A' backward-word

# Insert, Delete,..
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char

# Enable colors and change prompt:
autoload -U colors && colors	# Load colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# History in share directory:
HISTFILE=~/.local/share/zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# terminal rickroll!
alias rr='curl -s -L https://raw.githubusercontent.com/keroserene/rickrollrc/master/roll.sh | bash'

# neofetch on start
neofetch

# Load zsh-syntax-highlighting; should be last.
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
