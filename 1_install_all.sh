#!/bin/sh

for file in [1-9]_* ; do
  echo bash $file || SUCCESS=false
  [ "$SUCCESS" == "false" ] && echo "script $file returned an error; stopping" && exit 1
done
