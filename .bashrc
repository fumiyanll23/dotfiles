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

# configure Nix PATH
PATH=$(/usr/bin/printenv PATH | /usr/bin/perl -ne 'print join(":", grep { !/\/mnt\/[a-z]/ } split(/:/));')
. ~/.nix-profile/etc/profile.d/nix.sh

# configure direnv PATH
eval "$(direnv hook bash)"

# configure home-manager PATH
export NIX_PATH=$HOME/.nix-defexpr/channels:/nix/var/nix/profiles/per-user/root/channels${NIX_PATH:+:$NIX_PATH}

# configure Visual Studio Code (System Installed) PATH
export PATH=$PATH:"/mnt/c/Program Files/Microsoft VS Code/bin"

# original aliases
alias vi='nvim'
alias vim='nvim'
alias emacs='nvim'
