#!/bin/sh

if [ -z "$1" ]
  then
    echo "No url provided" 1>&2
    exit 1
fi

if [ -z "$2" ]
  then
    PREFIX=''
  else
    PREFIX=$2
fi

if [ -z "$3" ]
  then
    SUFFIX='.html'
  else
    SUFFIX=$3
fi

curl -s -o $PREFIX$(date +%Y-%m-%d-%H-%M-%S)$SUFFIX -O $1
