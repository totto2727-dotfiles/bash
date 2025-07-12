#!/bin/bash

test -s ~/.alias && . ~/.alias || true

autols() {
  [[ -n $AUTOLS_DIR ]] && [[ $AUTOLS_DIR != $PWD ]] && la
  AUTOLS_DIR="${PWD}"
}
export PROMPT_COMMAND="autols"

export SSH_AUTH_SOCK=~/.1password/agent.sock

eval "$(~/.local/bin/mise activate bash)"
eval "$(starship init bash)"
eval "$(zoxide init bash)"

export EDITOR=$(which nvim)
