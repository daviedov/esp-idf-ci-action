#!/usr/bin/env bash
set -e

CODE_PATH="$1"

. $IDF_PATH/export.sh

cd "${CODE_PATH}"

echo "123 ${ACCESS_TOKEN}"
nslookup git.avedov.info

git config --global init.defaultBranch master
idf.py reconfigure  
idf.py build
