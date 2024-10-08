This folder contains the FreeBSD ports I'm fiddling with.

Current state of the art (at time of edit):

Considered *production-ready* (i. e. could go into the ports tree):

- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16
    - Passes poudriere testport
- comms/wsjtx
    - Update to get superfox mode into FreeBSD asap.
    - Builds package and starts but no operational test yet.
    - portlint -AC still finds some warnings which eventually should be made gone.
    - wsjtx.tgz is dos-formatted which is a royal pita. Hence several ugly hacks with additional CR in patches, yuck. Use vi to edit patches or so such as not to lose the ^Ms...
    - Further hack to remove qmap which made my build choke.
    - Hacks in Makefile to make the bl**dy -rc6 appear where I could not get rid of it. Unfortunately, as the makefile currently is. it does not make it into PORTVERSION, sigh.
    - As a consequence, when the release is there, we'll need to bump PORTREVISION.
    - Makefile should pull from git directly to get cleaner. The current source distribution is not good, imho.
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
            - Taken from ports and updated from 1.18 to 1.19 as required by finance/py-trytond-party
        - finance/py-braintree
        - finance/py-csb43
        - finance/py-febelfin-coda
        - finance/py-mt940
        - finance/py-pyactiveresource
        - finance/py-schwifty
        - finance/py-shopifyapi
        - net/py-zeep
            - Taken from ports and updated with corrected dependencies (bumped PORTREVISION for that)
        - www/py-pytest-httpx

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
    - See https://hg.tryton.org/sao/
    - Currently not sure whether this software will be supporting tryton-7.x*, last changes in repo are a year old
- Any other port not detailed above
