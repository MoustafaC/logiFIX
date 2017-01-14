#!/usr/bin/env bash

LOG_FILE="$HOME/Documents/logifix.log"

PID=$$
PID_FILE=.xbox.pid

function xbox() {
  pkexec xboxdrv -s -d --type xbox360 --mimic-xpad & pid=$!
  }

function kxbox(){
  pkexec killall xboxdrv && kill $(cat $PID_FILE | awk '{print $1}') ; rm $PID_FILE
  }

DIRECTION="$1"

if [ ! -z "$DIRECTION" ]; then
  if [ "$DIRECTION" == "start" ]; then
    echo $PID > $PID_FILE 
    xbox
    sleep 5
  elif [ "$DIRECTION" == "stop" ]; then
    kxbox
  else 
    echo "invalid argument"
    exit 3
  fi
else 
  echo "requires an argument ( start | stop )"
  exit 1
fi
