This folder contains the ports I'm fiddling with.

Current state of the art (at time of edit):

Considered production-ready (i. e. could go into the ports tree):

- textproc/py-mako
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Has been there in -1.0-something for a good while
    - Is a quite stable and known, self-installing python package
    - Is accepted by the proposed gnuradio port
- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16

Considered alpha/beta (i. e. may or may not be a starting point for a working port):

- science/py-bluesky
    - Needs update to latest sources prior to any further work
- comms/gnuradio
    - Still very drafty port, pending better organization in Makefile, etc.
    - Currently does not see Qwt6 yet
    - Currently lacks good pkg-plist
    - But seems to build...

Considered pre-alpha (i. e. likely a waste of time):

- Any port not detailed above
