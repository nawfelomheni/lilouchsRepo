#!/bin/bash

NAME=$1
LASTNAME=$2
COUNTRY=$3
SHOW=$4
echo $SHOW 
if [ "$SHOW" = "true" ]; then
  echo "hello $NAME $LASTNAME from $COUNTRY"
else
  echo "Sorry but there is nothing to show"
fi
