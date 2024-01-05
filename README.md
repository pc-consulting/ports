This folder contains the FreeBSD ports I'm fiddling with.

Current state of the art (at time of edit):

Considered *production-ready* (i. e. could go into the ports tree):

- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16
    - Passes poudriere testport

Considered *alpha/beta* (i. e. may or may not be a starting point for a working port):

- finance/py-tryton*, finance/tryton-*
    - General observations, unless noted more specifically below:
        - I currently use FreeBSD 14.0-RELEASE-p3 as a basis.
        - portlint passes and poudriere testport passes for all py-tryton* ports. tryton.cfg dependencies should be in the Makefiles, trytond starts and does something, at least some (many) of the modules can be activated from the admin account, data entered. etc. but some modules (and those depending on them) still seem unwilling; I need to check whether that is due to incomplete packaging from my side, or whether that's genuine bugs which may be resolved with a newer software version.
        - Recommendation is to start from finance/tryton-server and pick options from there. It installs configuration samples and depends on the selected trytond modules. finance/py-tryton* just contain software by design.
        - Distfiles go to DIST_SUBDIR=Tryton
        - OpenBSD and netbsd (used to) have the port in the devel category, pytoport suggested the same. I currently do not see a use beyond tryton itself and hence decided to put it in finance as we have no 'business' category.
    - Individual ports, as currently are:
        - finance/tryton-server
            - Meta port to facilitate your individual module configuration from the lot below and further possible dependencies.
            - Added a default OPTIONS selection of what I currently believe is close to a minimal module configuration. Please note that there now is a Makefile.XXX where XXX is in ACCOUNTING, COMPANY, PARTY, ... and the like, each of which holds the OPTIONS for that subject area.
            - ToDos:
                - There is a draft Makefile.defaults.inc for global defaults already. I intend to adopt all ports in the next few days (if I manage).
                - Check (if I can) the cause of module failures found and fix them (or report bugs otherwise)
                - Amend sample configurations for nginx proxy, uwsgi, and postgres access instead instead of 'just' werkzeug and sqlite. Some thoughts already are there in Makefile comments.
                - Run the server with uid=tryton and from its own chdir/chroot.
                - Ensure that all works neatly in a jail.
            - Future improvements being considered
                - I noted that trytond offers to the admin to update all software components on-line. This would fundamentally interfere with the port approach, so we need a solution for that. I very much prefer to use ports as I consider that a much more controllable way to manage system configuration and expect e. g. system audits to be manageable with relaitvely standard tools but otoh we all know how we all press the 'y'es key...
                - Still need to identify whether to centralize Makefile items, and which ones, if so.
                    - Former line of thought, now thinking that the approach is not quite realistic as-written here (or, rather, achieved much easier with the above Makefile.default.inc):
                        - As-is, the set of ports likely is unmaintainable in the long term
                            - Continue for the time being since I know no better and want to get up and running and test asap
                        - Yet, I'd love to maintain separate ports because I strongly favour the idea that one can tell 'any' installed package from a look into the pkg db
                        - So, instead, create some kind of bsd.Tryoton.mk
                            - Derive a TRYTOND_SUITE_PACKAGES= with a list of packages in tryton.cfg writing with a script for the port maintainer
                            - For each package, define a set of variables like we have in ports like TRTOND_ACCOUNT_EU* for *_VERSION, *_DEPENDS, *_OPTIONS, and maybe some others
                            - Have a single trytond port origin where all packages can created from, named as we currently have them in individual ports
                            - Eventually, have a set of TRYTOND_CONTRIB_PACKAGES=, maybe in a likewise but separate trytond-contrib port, for all community contrib modules which we evenually will have
                            - Use the tryton-server port as a frontend to drive the two, and the bits that one needs to put Tryton on its feet (like database etc.)
        - finance/py-tryton
            - Desktop client of the Tryton business suite.
            - Has not yet experienced any significant attention from my side but seems to start and do something (though I also managed it to dump core occasionally) so much (all?) already may just be well. finance/tryton-desktop-client thus may or may not ever come to existence...
        - finance/py-trytond
            - Server of the Tryton business suite
            - Does not depend on postgres, rather the port relies on a database etc configuration defined via the finance/tryton-server meta port, as indicated above.
        - finance/py-trytond-*, finance/py-proteus
            - Modules for the Tryton server
            - Like finance/py-trytond, relies on finance/tryton-server doing the right thing. finance/tryton-lib may or may likely not ever come to existence (though a tryton-demo should, at some stage...).
            - All pass portlint, have complete tryton.cfg dependencies in Makefile, and pass poudriere testport
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
