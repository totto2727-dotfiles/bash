#!/bin/bash

test -s ~/.alias && . ~/.alias || true

autols() {
  [[ -n $AUTOLS_DIR ]] && [[ $AUTOLS_DIR != $PWD ]] && la
  AUTOLS_DIR="${PWD}"
}
export PROMPT_COMMAND="autols"

eval "$(starship init bash)"
eval "$(zoxide init bash)"
