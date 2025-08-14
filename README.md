This folder contains the FreeBSD ports I'm fiddling with.

Current state of the art (at time of edit):

Considered *production-ready* (i. e. could go into the ports tree):

- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16
    - Passes poudriere testport
- comms/wsjtx
    - Builds package and starts but no operational test yet.
    - portlint -AC still finds some warnings which eventually should be made gone.
    - We should consider to eventually depend on comms/hamlib.
    - pkg-plist has a few extra entries to satisfy make check-plist. Someone with brighter knowledge may find about that.
- finance/py-tryton*, finance/tryton-* (passing poudriere testport)
    - Individual ports, as currently are:
        - finance/tryton-server
            - Meta port to facilitate your individual module configuration from the lot below and further possible dependencies.
        - finance/py-tryton
            - Desktop client of the Tryton business suite.
        - finance/py-trytond
            - Server of the Tryton business suite
        - finance/py-trytond-*, finance/py-proteus
            - Modules for the Tryton server
        - ToDos and possible improvements:
            - Run the server with uid=tryton and from its own chdir/chroot.
            - Ensure that all works neatly in a jail.
            - I noted that trytond offers to the admin to update all software components on-line. This would fundamentally interfere with the port approach, so we need a solution for that. I very much prefer to use ports as I consider that a much more controllable way to manage system configuration and expect e. g. system audits to be manageable with relaitvely standard tools but otoh we all know how we all press the 'y'es key...
    - The following ports are requirements to Tryton modules and appear to operate (passing poudriere testport):
        - devel/py-efficient-apriori
        - devel/py-goocalendar
        - devel/py-mando
        - devel/py-radon
        - devel/py/stdnum
        - finance/py-braintree
        - finance/py-csb43
        - finance/py-febelfin-coda
        - finance/py-mt940
        - finance/py-pyactiveresource
        - finance/py-schwifty
        - finance/py-shopifyapi
        - www/py-pytest-httpx
- graphics/py-mtcnn
    - Builds package, installs, and passes portlint -AC

Considered *alpha/beta* (i. e. may or may not be a starting point for a working port):

- comms/mshv
    - Builds and produces some sort of binary which kind of starts but produces no output other than an occasional splash screen.
    - Installs (and deinstalls) that binary, plus some files to ${EXAMPLESDIR} which also are from the source build.
- ports-mgmt/pytoport
    - Python version parsing apparently has changed a bit in ports. The patch adds a '.0' to USES= so that the checks pass.
    - Made the handling of COMMENT in Makefile resilient to inconvenient pipy.org package information.
    - PORTREVISION bumped to 1 accordingly.
    - There still may be an issue with handling underscores '_' in distribution file names which seem to be converted to dashes '-' unconditionally. Subsequently, download of distfiles with underscores in their names fails.
- www/cloudlog
    - Considering to move to https://github.com/wavelog/wavelog
    - Still very drafty port
    - Makefile needs completion to install files from files/ to where they belong
    - pkg-plist needs updating accordingly (e. g. examples dir)
    - pkg-message currently contains fixed paths
    - Entirely untested
- science/py-bluesky
    - Needs update to latest sources prior to any further work
- comms/openatscompass
    - Quick porting attempt but unusable at this time. CMAKE fails at least on my box so I guess that ${WRKSRC}/CMakeLists.txt needs further attention.
    - Naming is a pain. The repo uses UPPER case, the distfile apparently only downloads in lower case. So you extract the sources from a lower-case-named distfile to an UPPER-case source code work directory. Which for I still have to fiddle out the most convenient way to ${XXX:tl} or ${XXX:tu} which variable. And I do not just want to name the port with a common name likely to reappear elsewhere in the ports tree.
    - A normal port build seems to complain about my current approach though portlint -AC seems happy about it.

Considered *pre-alpha* (i. e. likely a waste of time):

- finance/tryton-demo
        - Rough action plan as follows, yet to be implemented
        - Investigate 'representative stand-alone playground' scenario for self-learning and tutorials, both
            - In module configuration (e. g. via either a given troton-server configuration, or a list of 'direct' dependencies to py-trytond-*), and
            - In example data (e. g. during post-install, via py-proteus scripts); and
            - Including (pre-configured) all required non-trytond modules (web server, database, and the like), optionally tryton-desktop/py-tryton, and the like.
        - Investigate use of trytoncommunity-setuptools (https://pypi.org/project/trytoncommunity-setuptools/)
- finance/tryton-lib
    - Intended as meta port for proteus but ...
    - ... likely superfluous and hence to go away.
- finance/tryton-sao
    - See https://foss.heptapod.net/tryton/tryton/-/tree/branch/default/sao?ref_type=heads
 - Any other port not detailed above
