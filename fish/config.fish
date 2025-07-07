set fish_greeting

if status is-interactive
    # Commands to run in interactive sessions can go here
end

alias l="la"
alias py="python3"
alias vim="nvim"
alias g="git"
alias bat="batcat"
alias cat="bat --paging=never"
alias z="zoxide"
alias bundle="bundle3.0"
alias qsharp="python3 ~/.config/qsharp/exec.py"

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk-amd64"
export PATH="$JAVA_HOME/bin:$PATH"
export MAVEN_HOME="/usr/share/maven"
export PATH="$MAVEN_HOME/bin:$PATH"

z init fish | source
