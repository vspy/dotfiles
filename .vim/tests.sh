#!/bin/bash

set -e

current_dir=$(pwd)
file=$1
filename=$(basename "$file")
extension="${filename##*.}"

run_ruby_tests() {
  echo "implement me"
}

run_python_tests() {
  if [[ -f 'manage.py' ]]; then
    python manage.py test
  else
    nosetests
  fi
}

case "$extension" in
  "rb")
    run_ruby_tests
    ;;

  "py")
    run_python_tests
    ;;

  *)
    echo "don't know how to run tests for $extension files"
    ;;
esac
