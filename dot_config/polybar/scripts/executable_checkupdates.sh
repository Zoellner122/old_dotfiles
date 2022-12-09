#!/bin/bash

check_updates() {
    pacman_aur="$(checkupdates+aur | wc -l)"
    total=$pacman_aur
}

msg_control() {
    if [ $total == 0 ]; then
        echo "%{T1} %{T-}"
    elif [ $total != 0 ]; then
        echo "%{T1} $total %{T-}"
    fi
}

check_updates
msg_control
