=========================
``virtualenvwrapperlite``
=========================

``virtualenvwrapperlite`` is a "rewrite" of `Doug Hellmann's
``virtualenvwrapper`` <https://pypi.python.org/pypi/virtualenvwrapper>`_ in
bash. The goal to to provide the same developer user experience that the core
features of ``virtualenvwrapper`` provide to ``virtualenv``, but without the
performance overhead and additional complexity of all the features I don't use.
If you have a feature request for this project, then you should probably be
using ``virtualenvwrapper`` instead.

Features
========

#. Organizes all of your virtual environments in one place.
#. Wrappers for managing your virtual environments (create, delete, ~~copy~~).
#. Use a single command to switch between environments.
#. ~~Tab completion for commands that take a virtual environment as argument.~~
#. ~~User-configurable hooks for all operations.~~
#. ~~Plugin system for more creating sharable extensions.~~

If the ~~crossed out~~ features are appealing to you, use `Doug Hellmann's
``virtualenvwrapper`` <https://pypi.python.org/pypi/virtualenvwrapper>`_
instead.

Usage
=====

Create a Python virtual environment, no matter your working directory, and
immediately jump into it:

.. code-block:: shell

    ~$ mkvirtualenv my_new_venv
    (my_new_venv) ~$

Similarly, list your available virtual environments:

.. code-block:: shell

    (my_new_venv) ~$ lsvirtualenv
    my_new_venv
    other_venv

Switch to another virtual environment at any time:

.. code-block:: shell

    (my_new_venv) ~$ workon other_venv
    (other_venv) ~$

Remove a virtual environment, even if you're still using it:

.. code-block:: shell

    (other_venv) ~$ rmvirtualenv other_venv
    ~$

Setup
=====

Similar to ``virtualenvwrapper``, ``virtualenvwrapperlite`` supports the
``WORKON_HOME`` environment variable for determining the "home" folder for all
of your Python virtual environments. If you don't specify a value for
``WORKON_HOME``, it will default to ``~/Envs`` and the directory will be
created for you.

Clone this repository, and add the following to your ``.bashrc`` or
``.profile``:

.. code-block:: bash

    export WORKON_HOME=~/Envs
    source path/to/virtualenvwrapperlite.sh
