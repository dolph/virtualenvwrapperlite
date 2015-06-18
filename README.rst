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
