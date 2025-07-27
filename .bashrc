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

export EDITOR=nvim

export PNPM_HOME="~/.local/share/pnpm"
case ":$PATH:" in
*":$PNPM_HOME:"*) ;;
*) export PATH="$PNPM_HOME:$PATH" ;;
esac
