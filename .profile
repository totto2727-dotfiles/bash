#!/bin/bash

test -z "$PROFILEREAD" && . /etc/profile || true

eval "$(~/.local/bin/mise activate --shims)"
