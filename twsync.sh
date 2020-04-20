#!/bin/sh
echo -ne "\033]0;twowaysync\007"
twowaysync /home/henenq/workspace/ /home/henenq/sshfs/workspace/ -w 600