#!/bin/bash
# This script filters ansible log to only output tasks ans plays name.
tail -n 0 -f $1 | stdbuf -o0 sed "s/^[^|]*|//g" | stdbuf -o0 sed "s/\] \*.*//g"  | grep --line-buffered -i "PLAY \\[\\|TASK \\[\\|failed\\|fatal:\\|error\\|warning"
