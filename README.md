This folder contains the ports I'm fiddling with.

Current state of the art (at time of edit):

Considered *production-ready* (i. e. could go into the ports tree):

- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16

Considered *alpha/beta* (i. e. may or may not be a starting point for a working port):

- comms/gnuradio
    - _Any more knowledgeable testers/takers more than welcome._
    - Still pretty drafty port, pending better organization in Makefile, etc.
    - gr-qtgui does not find qwt and disables (though I think it's there)
    - Build hangs in staging creating Freedesktop items:
        Begin freedesktop install...
        Install icon: 16x16
        Install icon: 24x24
        Install icon: 32x32
        Install icon: 48x48
        Install icon: 64x64
        Install icon: 128x128
        Install icon: 256x256
        Install mime type
        Install menu items
      (and remaining here forever)
    - pkg-plist likely well outdated
    - Only attempted to build all OPTIONS so far, needs much more testing
        => Someone more knowledgeable may wish to suggest to remove some of them
    - WX is a loose end in Makefile, see comments and commented-out bits there
    - Currently does not see Qwt6 yet
- finance/py-tryton*
    - General observations, unless noted more specifically below:
        - (Relatively naively) created with the help of pytoport, with obvious required amendments.
        - OpenBSD and netbsd (used to) have the port in the devel category, pytoport suggested the same. I currently do not see a use beyond tryton itself and hence decided to put it in finance. => TBC
        - portlint passes
        - Otherwise untested
    - finance/py-tryton
        - Desktop client of the Tryton business suite
    - finance/py-trytond
        - Server of the Tryton business suite
        - Does not depend on postgres but the port will need a database => TBD
    - finance/py-trytond-account*
        - Accounting modules for Tryton server
        - As-created by pytoport, not usable yet: py-trytond-account, py-trytond-account-asset, py-trytond-account-be, py-trytond-account-budget, py-trytond-account-cash-rounding, py-trytond-account-consolidation, py-trytond-account-credit-limit, py-trytond-account-deposit, py-trytond-account-dunning, py-trytond-account-dunning-email, py-trytond-account-dunning-fee, py-trytond-account-dunning-letter, py-trytond-account-es, py-trytond-account-es-sii, py-trytond-account-eu, py-trytond-account-fr, py-trytond-account-fr-chorus, py-trytond-account-invoice, py-trytond-account-invoice-correction, py-trytond-account-invoice-defer, py-trytond-account-invoice-history, py-trytond-account-invoice-line-standalone, py-trytond-account-invoice-secondary-unit, py-trytond-account-invoice-stock, py-trytond-account-invoice-watermark, py-trytond-account-move-line-grouping, py-trytond-account-payment
- ports-mgmt/pytoport
    - Python version parsing apparently has changed a bit in ports. The patch adds a '.0' to USES= so that the checks pass.
    - PORTREVISION bumped to 1 accordingly.
    - There still may be an issue with handling underscores '_' in distribution file names which seem to be converted to dashes '-' unconditionally. Subsequently, download of distfiles with underscores in their names fails.
- www/cloudlog
    - Still very drafty port
    - Makefile needs completion to install files from files/ to where they belong
    - pkg-plist needs updating accordingly (e. g. examples dir)
    - pkg-message currently contains fixed paths
    - Entirely untested
- science/py-bluesky
    - Needs update to latest sources prior to any further work

Considered *pre-alpha* (i. e. likely a waste of time):

- Any port not detailed above
