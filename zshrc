# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob nomatch notify
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' expand prefix suffix
zstyle ':completion:*' group-name ''
zstyle ':completion:*' insert-unambiguous true
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' matcher-list '' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[.]=** r:|=**'
zstyle ':completion:*' menu select=2
zstyle ':completion:*' original true
zstyle ':completion:*' preserve-prefix '//[^/]##/'
zstyle ':completion:*' select-prompt '%SScrolling active: current selection at %p%s'
zstyle ':completion:*' squeeze-slashes true
zstyle ':completion:*' verbose true
zstyle :compinstall filename '/etc/zsh/zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

export STARSHIP_CONFIG=/etc/userconf/starship.toml
eval "$(starship init zsh)"

PluginsPath="/usr/share/zsh/plugins"
source $PluginsPath/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PluginsPath/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source $PluginsPath/zsh-history-substring-search/zsh-history-substring-search.zsh
unset PluginsPath

bindkey "^[[H" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[3~" delete-char
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
HISTORY_SUBSTRING_SEARCH_ENSURE_UNIQUE=1

alias ls='eza --group-directories-first --color=auto --icons -h'
alias ll='eza --group-directories-first --color=auto --icons -lh'
alias la='eza --group-directories-first --color=auto --icons -lha'
alias lt='eza --group-directories-first --color=auto --icons -lh --tree --level=2'
alias lT='eza --group-directories-first --color=auto --icons -lh --tree --level=4'
alias lnew='eza --group-directories-first --color=auto --icons -lh --sort=modified'
alias lold='eza --group-directories-first --color=auto --icons -lh --sort=modified --reverse'
alias lsize='eza --only-files --color=auto --icons -lh --sort=size'
alias lrsize='eza --only-files --color=auto --icons -lh --sort=size --reverse'
