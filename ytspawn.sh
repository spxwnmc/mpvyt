#!/usr/bin/env bash

function dependency-check () {
    for dependency; do
        if ! command -v "${dependency}" &>/dev/null; then
            echo -e "${dependency} not found. Please install it.\n" >&2
            exit 2
        fi
    done
    unset dependency
}


function main () {
    dependency-check "jq" "youtube-dl" "curl" "mpv"
}

main