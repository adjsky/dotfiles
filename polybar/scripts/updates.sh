#!/bin/bash

updates=$((checkupdates; yay -Qua) | grep -c ".*")

if [[ $updates == 0 ]]; then
    echo Up to date
else
    if [[ $updates == 1 ]]; then
        word=update
    else
        word=updates
    fi
    echo $updates $word
fi
