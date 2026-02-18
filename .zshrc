alias diff="git diff"
alias merge="git mergetool"
alias db="mycli -h localhost -u root -p"
alias add="git add"
alias pm="git pull origin master"
alias pl="git pull"
alias pu="git push -u origin"
alias st="git status"
alias cm="git commit -m"
alias cb="git checkout -b"
alias ch="git checkout"
alias fp="git fetch --prune"
alias bd="git branch -D"
alias mvn8="JAVA_HOME=/Users/yadunandanbhat/.sdkman/candidates/java/8.0.442-amzn/ && mvn"
alias ci="mvn clean install"
alias rs="git restore"
alias log="git log --oneline"
alias grep="rg"
alias vim="nvim"
alias cat="bat --theme='Catppuccin Latte' -p"
alias df="duf"
alias ll="eza -ahl --icons"
alias ls="eza -lh --group-directories-first --icons --hyperlink"
alias top="btop"
alias cd="z"
alias kubectl="minikube kubectl --"
alias fzf="fzf --height 40% --layout=reverse --border"
alias lz="lazygit"
alias ping="gping"
alias wtf="wtfutil"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

eval "$(starship init zsh)"

source <(fzf --zsh)

export PATH="/opt/homebrew/opt/mysql@8.0/bin:$PATH"
export PATH="/Users/yadunandanbhat/Library/Python/3.9/bin:$PATH"
fpath+=${ZDOTDIR:-~}/.zsh_functions

eval "$(zoxide init zsh)"
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/yadunandanbhat/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions

# Added by Antigravity
export PATH="/Users/yadunandanbhat/.antigravity/antigravity/bin:$PATH"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/yadunandanbhat/.lmstudio/bin"
# End of LM Studio CLI section

