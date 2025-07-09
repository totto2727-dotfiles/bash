#!/bin/bash

test -s ~/.alias && . ~/.alias || true

eval "$(starship init bash)"

