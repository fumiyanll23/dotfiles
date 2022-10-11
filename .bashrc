# My Awesome Bash Configuration ".bashrc"
# input a new line after output
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

# configure bash prompt
export PS1="\t \[\e[1;32m\]\w\[\e[0m\]\n\[\e[1;33m\](★'-') < \[\e[0m\]"

# configure Visual Studio Code (System Installed) PATH
export PATH=$PATH:"/mnt/c/Program Files/Microsoft VS Code/bin"

# original aliases
alias vi='nvim'
alias vim='nvim'
alias emacs='nvim'
