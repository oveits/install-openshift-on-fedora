#!/bin/sh

yum --version 2>/dev/null 1>/dev/null && export INSTALL=yum
dnf --version 2>/dev/null 1>/dev/null && export INSTALL=dnf

for file in [2-9]_* ; do
  bash $file || SUCCESS=false
  [ "$SUCCESS" == "false" ] && echo "script $file returned an error; stopping" && exit 1
done
