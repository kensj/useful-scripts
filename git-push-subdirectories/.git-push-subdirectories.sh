#!/bin/bash

function GitPushSubd() {
  dir=$(pwd)
  for d in $(find .  -mindepth 1 -maxdepth 1 -not -path '*/\.*' -type d)
  do
    echo $dir/$d
    cd $dir/$d
    git add -A
    git commit -m "update"
    git push
  done
}


