#!/usr/bin/env bash
set -e

CODE_PATH="$1"

. $IDF_PATH/export.sh

cd "${CODE_PATH}"

git config --global init.defaultBranch master
idf.py reconfigure  
idf.py build
