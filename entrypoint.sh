#!/usr/bin/env bash
set -e

echo "ESP-IDF version: ${IDF_VERSION}"

CODE_PATH="$1"

. $IDF_PATH/export.sh

cd "${CODE_PATH}"

idf.py build