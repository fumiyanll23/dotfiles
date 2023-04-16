# My Awesome Bash Configuration
# Original aliases
alias h="history"
alias hs="history | grep"
alias hsi="history | grep -i"
alias ll="ls -AlF"
alias la="ls -A"
alias l="ls -CF"
alias vi="nvim"
alias view="nvim -R"
alias vim="nvim"
alias emacs="nvim"
alias relogin="exec $SHELL -l"
alias bat="batcat"

# Input a new line after output
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

# Configure bash prompt
export PS1="\t \[\e[1;32m\]\w\[\e[0m\]\n\[\e[1;33m\](★'-') < \[\e[0m\]"

# Configure Visual Studio Code (System Installed) PATH
export PATH=$PATH:"/mnt/c/Program Files/Microsoft VS Code/bin"

# Configure pyenv PATH
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
