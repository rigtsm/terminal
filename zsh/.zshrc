# Dependancies You Need for this Config
# zsh-syntax-highlighting - syntax highlighting for ZSH in standard repos
# autojump - jump to directories with j or jc for child or jo to open in file manager
# zsh-autosuggestions - Suggestions based on your history

# Initial Setup
# mkdir -p "$HOME/.zsh"
# git clone https://github.com/sindresorhus/pure.git "$HOME/.zsh/pure"
# Setup Alias in $HOME/.zsh/aliasrc

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "


# Pure Prompt
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# black, red, green, yellow, blue, magenta, cyan, white, default
# change the path color
zstyle :prompt:pure:path color cyan

zstyle :prompt:pure:prompt:success color green

zstyle :prompt:pure:git:stash show yes




# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)               # Include hidden files.

# Custom ZSH Binds
bindkey '^ ' autosuggest-accept

# Load aliases and shortcuts if existent.
[ -f "$HOME/.zsh/aliasrc" ] && source "$HOME/.zsh/aliasrc"



source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/rig/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/autojump/autojump.sh
source /home/rig/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Load ; should be last.
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh 2>/dev/null
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
source /usr/share/autojump/autojump.zsh 2>/dev/null
source /etc/zsh_command_not_found


# Fixing anoying tilix problem
if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte-2.91.sh
fi

