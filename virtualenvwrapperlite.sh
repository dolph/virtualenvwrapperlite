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
    if [ ! -d "$WORKON_HOME/$1" ]; then
        mkvirtualenv "$1"
    else
        source "$WORKON_HOME/$1/bin/activate";
    fi
}

mkvirtualenv () {
    deactivate_venv
    if [ ! -d "$WORKON_HOME/$1" ]; then
        python3 -m virtualenv --python=python3 "$WORKON_HOME/$1";
    fi;
    source "$WORKON_HOME/$1/bin/activate";

    pip install --upgrade pip
}

mkvirtualenv2 () {
    deactivate_venv
    if [ ! -d "$WORKON_HOME/$1" ]; then
        python3 -m virtualenv --python=python2 "$WORKON_HOME/$1";
    fi;
    source "$WORKON_HOME/$1/bin/activate";
}

rmvirtualenv () {
    deactivate_venv
    if [ -d "$WORKON_HOME/$1" ]; then
        rm -rf "$WORKON_HOME/$1";
    else
        echo "Virtualenv not found."
        ls -1 "$WORKON_HOME";
    fi
}

lsvirtualenv () {
    ls -1 "$WORKON_HOME";
}
