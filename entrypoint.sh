#!/usr/bin/env bash
set -e

CODE_PATH="$1"

. $IDF_PATH/export.sh

echo "---------------"
echo "${CODE_PATH}"
echo "---------------"

cd "${CODE_PATH}"

idf.py build