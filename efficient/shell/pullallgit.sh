#!/bin/bash -x

if [ $1 ]; then
    d=$1
else
    d='./'
fi

echo 'pull all git under the dir' $d

find $d -type d -iname '.git'
