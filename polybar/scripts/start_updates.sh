#!/bin/bash

update_polybar() {
    polybar-msg hook updates_ipc 1 > /dev/null
}

echo Updating > ~/.config/polybar/scripts/updates.txt
update_polybar

sleep 0.1 # if the next command will be executed immediatelly polybar will cat an empty file

~/.config/polybar/scripts/updates.sh > ~/.config/polybar/scripts/updates.txt
update_polybar

