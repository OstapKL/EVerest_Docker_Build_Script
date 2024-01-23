#!/bin/bash -x

export LOCAL="/home/$(whoami)/.local"
export LOCAL_BIN="$LOCAL/bin"
export EVEREST_DEV="/home/$(whoami)/everest-dev"
export CPM_SOURCE_CACHE="$HOME/.cache/CPM"
export PATH="$LOCAL_BIN:$PATH"