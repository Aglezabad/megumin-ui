#!/bin/sh

PWD="$(dirname "$0")"

if ! command -v lessc > /dev/null 2>&1; then
  echo "lessc is not installed. Please install lessc before running this script."
  exit 1
fi
echo "Generating dist files..."
lessc $PWD/../src/main.less $PWD/../dist/megumin-ui.css
lessc $PWD/../src/main.less $PWD/../dist/megumin-ui.min.css
