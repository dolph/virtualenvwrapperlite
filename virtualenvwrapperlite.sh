#!/bin/bash

export WORKON_HOME=${WORKON_HOME:-$HOME/Envs}
mkdir -p "$WORKON_HOME"

function deactivate_venv() {
    if type -t deactivate > /dev/null; then
        deactivate;
    fi;
}

function workon() {
    deactivate_venv
    source "$WORKON_HOME/$1/bin/activate";
}

function mkvirtualenv() {
    if [ ! -d "$WORKON_HOME/$1" ]; then
        virtualenv "$WORKON_HOME/$1";
    fi;
    workon "$1";
}

function rmvirtualenv() {
    deactivate_venv
    rm -rf "$WORKON_HOME/$1";
}

function lsvirtualenv() {
    ls -1 "$WORKON_HOME";
}
