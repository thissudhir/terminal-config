# .zshrc - Working configuration
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Initialize Starship (your existing config)
eval "$(starship init zsh)"

# Enhanced History Configuration
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt SHARE_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_IGNORE_SPACE

# Enhanced completion
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Key bindings for history search
autoload -U up-line-or-beginning-search
autoload -U down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search
bindkey "^[[A" up-line-or-beginning-search
bindkey "^[[B" down-line-or-beginning-search

# Your existing aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll='ls -alF --color=auto'
alias la='ls -A --color=auto'
alias ..='cd ..'
alias c='clear'

# Git aliases
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'

# Your existing PATH
export PATH=~/.console-ninja/.bin:$PATH

# Load syntax highlighting (REAL-TIME HIGHLIGHTING!)
if [[ -f ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
    source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
   # echo "✅ Syntax highlighting loaded"
else
    echo "❌ Syntax highlighting not found - run the git clone commands above"
fi

# Load autosuggestions
if [[ -f ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
    source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
  #  echo "✅ Autosuggestions loaded"
else
    echo "❌ Autosuggestions not found - run the git clone commands above"
fi
