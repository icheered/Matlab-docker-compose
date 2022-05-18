#!/bin/bash
FILE=~/.local/share/applications/matlab.desktop
if test -f "$FILE"; then
    echo "$FILE exists."
else
    echo Matlab.desktop does not exist, creating
    sed -i "s|^Exec.*|Exec=$PWD/matlab.sh|" matlab.desktop
    cp matlab.desktop ~/.local/share/applications/
fi