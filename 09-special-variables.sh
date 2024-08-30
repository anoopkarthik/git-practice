#!/bin/bash

echo "All variables are passed to the script: $@"
echo "Number of variables passed: $#"  #echo
echo "Script name: $0"
echo "current working directory: $PWD"
echo "Home directory of current user: $HOME"
echo "PID of current PID of script execuited now: $$"
sleep 100 &
echo "PID of last background command: $!"
