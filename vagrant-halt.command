#!/bin/sh

dir=${0%/*}
if [ -d "$dir" ]; then
  cd "$dir"
fi

cd vagrant
vagrant halt