#!/bin/bash

export VIRTUALENV_DIR=${VIRTUALENV_DIR:-$HOME/Environments}
mkdir -p "$VIRTUALENV_DIR"

function deactivate_venv() {
    if type -t deactivate > /dev/null; then
        deactivate;
    fi;
}

function workon() {
    deactivate_venv
    source "$VIRTUALENV_DIR/$1/bin/activate";
}

function mkvirtualenv() {
    if [ ! -d "$VIRTUALENV_DIR/$1" ]; then
        virtualenv "$VIRTUALENV_DIR/$1";
    fi;
    workon "$1";
}

function rmvirtualenv() {
    deactivate_venv
    rm -rf "$VIRTUALENV_DIR/$1";
}

function lsvirtualenv() {
    ls -1 "$VIRTUALENV_DIR";
}
