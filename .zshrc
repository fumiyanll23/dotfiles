#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# Aliases.
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

# Input a new line after output.
function add_line {
  if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
    PS1_NEWLINE_LOGIN=true
  else
    printf '\n'
  fi
}
PROMPT_COMMAND='add_line'

# Configure zsh prompt.
export PROMPT="%D{%Y/%m/%d} %* %n %F{46}%B%~%b%f
%F{228}%B(★'-') <%b%f "

# Configure Visual Studio Code (System Installed) PATH.
export PATH=$PATH:"/mnt/c/Program Files/Microsoft VS Code/bin"

# Configure pyenv PATH
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
