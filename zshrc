# For homebrew
export PATH=$PATH:/opt/homebrew/bin

# alias
alias ls='ls -aG' # for UNIX ls
# alias ls='ls --color=auto --all' # for GNU ls
alias la='ls'
alias ll='ls -l'

# enable complement
autoload -U compinit
compinit

# display auto suggestions
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
# display commands in green when it is valid and in red when invalid.
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# git-prompt settings
source ~/.zsh/git/git-prompt.sh
# GIT_PS1_SHOWDIRTYSTATE ...
#   If set nonempty value, unstaged (*) and staged (+) changes will be shown next to the branch name.
GIT_PS1_SHOWDIRTYSTATE=1
# GIT_PS1_SHOWUPSTREAM ...
#   If set "auto",
#   "<" indicates you are behind,
#   ">" indicates you are ahead,
#   "<>" indicates you have diverged
#   "=" indicates that there is no difference.
GIT_PS1_SHOWUPSTREAM="auto"
# GIT_PS1_SHOWUNTRACKEDFILES ...
#   If set nonempty value, '%' will be shown next to the branch name when untracked files exist.
GIT_PS1_SHOWUNTRACKEDFILES=1
# GIT_PS1_SHOWSTASHSTATE ...
#   If set nonempty value,
#   '$' will be shown next to the branch name if something is stashed.
GIT_PS1_SHOWSTASHSTATE=1

# to use color names e.g. green, cyan, blue...
autoload -U colors
colors

setopt PROMPT_SUBST
PROMPT='%F{237}%n@%m ${fg[cyan]}%c ${fg[blue]}(%*)${fg[magenta]}$(__git_ps1)${reset_color}
> '

# disable bell
setopt no_beep

# save command history
HISTFILE=~/.zsh_history
HISTSIZE=6000000
SAVEHIST=6000000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
