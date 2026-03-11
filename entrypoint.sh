#!/bin/sh
set -e

IDF_VERSION=$1
PROJECT_PATH=$2

echo "Using ESP-IDF version: $IDF_VERSION"
echo "Project path: $PROJECT_PATH"

cd "$GITHUB_WORKSPACE/$PROJECT_PATH"

idf.py build