#!/bin/sh

export WORKON_HOME=${WORKON_HOME:-$HOME/Envs}
mkdir -p "$WORKON_HOME"

deactivate_venv () {
    if type -t deactivate > /dev/null; then
        deactivate;
    fi;
}

workon () {
    deactivate_venv
    source "$WORKON_HOME/$1/bin/activate";
}

mkvirtualenv () {
    if [ ! -d "$WORKON_HOME/$1" ]; then
        virtualenv "$WORKON_HOME/$1";
    fi;
    workon "$1";
}

mkvirtualenv3 () {
    if [ ! -d "$WORKON_HOME/$1" ]; then
        virtualenv --python=python3 "$WORKON_HOME/$1";
    fi;
    workon "$1";
}

rmvirtualenv () {
    deactivate_venv
    rm -rf "$WORKON_HOME/$1";
}

lsvirtualenv () {
    ls -1 "$WORKON_HOME";
}
