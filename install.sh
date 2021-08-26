#!/usr/bin/env bash
BASE=$(git rev-parse --show-toplevel)
LSP_BIN_PATH=$HOME/.local/bin

pfx="~~~~~"
heading() {
  echo
  echo $pfx $1
}

get_platform() {
  case "$(uname -s)" in
    Linux*)     platform=Linux;;
    Darwin*)    platform=Mac;;
    CYGWIN*)    platform=Cygwin;;
    MINGW*)     platform=MinGw;;
    *)          platform="UNKNOWN:${unameOut}"
  esac
  echo $platform
}