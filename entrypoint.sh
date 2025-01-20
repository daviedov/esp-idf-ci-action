#!/usr/bin/env bash
set -e

CODE_PATH="$1"

. $IDF_PATH/export.sh

cd "${CODE_PATH}"

echo "123 ${ACCESS_TOKEN}"
git ls-remote https://${ACCESS_TOKEN}@git.avedov.com/adsoft/water-valve.git

git config --global init.defaultBranch master
idf.py reconfigure  
idf.py build
