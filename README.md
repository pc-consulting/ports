This folder contains the FreeBSD ports I'm fiddling with.

Current state of the art (at time of edit):

Considered *production-ready* (i. e. could go into the ports tree):

- comms/py-gpiofbsd
    - Installs on 13.1-STABLE stable/13-n253275-6974ae0530b amd64 python 3.9.16
    - Installs on 13.1-STABLE stable/13-n253132-e8c769b22d4 arm64 python 3.8.16 and tested runs with python 3.9.16
    - Passes poudriere testport
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

- finance/py-tryton*, finance/tryton-*
    - General observations, unless noted more specifically below:
        - Currently running in circles finding a presentable uWSGI setup [1].
        - I currently use FreeBSD 14.0-RELEASE-p3 as a basis.
        - portlint passes and poudriere testport passes for all py-tryton* ports. tryton.cfg dependencies should be in the Makefiles, trytond starts and does something, at least some (many) of the modules can be activated from the admin account, data entered. etc. but some modules (and those depending on them) still seem unwilling; I need to check whether that is due to incomplete packaging from my side, or whether that's genuine bugs which may be resolved with a newer software version.
        - Recommendation is to start from finance/tryton-server and pick options from there. It installs configuration samples and depends on the selected trytond modules. finance/py-tryton* just contain software by design.
        - Distfiles go to DIST_SUBDIR=Tryton
        - TRYTON_DEFAULT_VERSION, TRYTON_MIN_VERSION and TRYTON_MAX_VERSION can be set from finance/tryton-server/Makefile.defaults.portversions.mk for all tryton ports
            - PORTVERSION is set to TRYTON_DEFAULT_VERSION in tryton-server/Makefile.defaults.mk unless explicitly set in a port Makefile.
            - Tryton port dependency checks are relaxed to check for an installed version above including (>=) TRYTON_MIN_VERSION and below (<) TRYTON_MAX_VERSION as Tryton says that modules of the same Major.minor version should interoperate nicely.
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


===

[1]

$ less /usr/local/etc/nginx/nginx.conf.d/trytond.conf
server {
    # Please note that tryton does not properly work with supbaths. You need a host name.
    # You will have to change this to your real host name.
    listen localhost:8080;
    location / {
        include uwsgi_params;
        uwsgi_pass localhost:8421;
        #proxy_pass http://localhost:8421;
        proxy_set_header Host $host;
        proxy_set_header X-Real-IP $remote_addr;
        proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Host $server_name;
    }
    # Serve potential static content from a directory.
    location /tryton-static/ {
        root /usr/local/www/tryton-server/tryton-static;
    }
}

and

$ cat /usr/local/etc/trytond.uwsgi.ini
[uwsgi]
#http-socket = localhost:8421
uwsgi-socket = localhost:8421
master = true
wsgi = trytond.application:app
cheaper = 4
processes = 16
threads= 16
# Environment variables, see https://docs.tryton.org/projects/server/en/latest/topics/start_server.html#wsgi-server
env = TRYTON_CONFIG=/usr/local/etc/trytond.conf
env = TRYTON_LOGGING_CONFIG=/usr/local/etc/tryton.logconf
# Can be controlled form tryton.logconf
# env = TRYTOND_LOGGING_LEVEL=INFO
env = TRYTON_COROUTINE=YES
# Let's just set the database in one single place, please, i. e. trtond.conf
# env = TRYTON_DATABASE_NAMES=db

and

$ sudo cat /usr/local/etc/trytond.conf
Password: ***
[database]
#uri = postgresql://user:password@localhost/
uri = sqlite://
path = /var/db/trytond/db
#list = True
#retry = 5
#subquery_threshold = 1000
#language = en
#avatar_filestore = False
#avatar_prefix =
avatar_prefix = /usr/local/www/tryton-server/tryton-static
#default_name = template1   # PostgreSQL default
#default_name = :memory:    # SQLite default
#default_name = trytond
default_name = db
#timeout = 1800
#minconn = 1
#maxconn = 64
#unaccent_function = unaccent
#similarity_function = similarity

[web]
#listen = localhost:8000
#listen = localhost:8421
#hostname = localhost
#root = /tryton
#num_proxies = 0
#cache_timeout = 43200
#cors = http://example.com https://example.com
#avatar_base = ''
#avatar_timeout = 604800

[request]
#max_size = 2097152
#max_size_authenticated = 2147483648
#timeout = 60

[cache]
#transaction = 10
#model = 200
#record = 2000
#field = 100
#default = 1024
#clean_timeout = 300
#count_timeout = 86400
#count_clear = 1000

[queue]
#worker = False
#clean_days = 30
#batch_size = 20

[error]
#clean_days = 90

[table]
#account.invoice.line = acc_inv_line
#account.invoice.tax = acc_inv_tax

#[ssl]
#privatekey = /path/to/private/key
#certificate = /path/to/certificate

[email]
#uri = smtp://localhost:25
#from = "Company Inc" <info@example.com>
#retry = 5

[session]
#authentications = password
#authentications = password+sms,ldap
#authentication_ip_network = ''
#max_age = 2592000
#timeout = 300
#max_attempt = 5
#max_attempt_ip_network = 300
#ip_network_4 = 32
#ip_network_6 = 56

[password]
#length = 8
#forbidden = /path/to/file/with/forbidden/passwords/one/per/line
#reset_timeout = 86400
#passlib =

[attachment]
#filestore = True
store_prefix=/var/db/trytond/db

[bus]
#allow_subscribe = False
#url_host =
#long_polling_timeout = 300
#cache_timeout = 300
#select_timeout = 5

[html]
#src = https://cloud.tinymce.com/stable/tinymce.min.js
#plugins = ''
#css = []
#class = ''

#[wsgi middleware]
#ie = werkzeug.contrib.fixers.InternetExplorerFix
#
#[wsgi ie]
#kwargs={'fix_attach': False}

fail with

==> /var/log/nginx/access.log <==
127.0.0.1 - - [17/Jan/2024:23:28:50 +0100] "POST / HTTP/1.1" 200 20 "-" "Python-xmlrpc/3.9"

==> /var/log/uwsgi.log <==
[pid: 5269|app: 0|req: 2/6] 127.0.0.1 () {38 vars in 471 bytes} [Wed Jan 17 22:28:50 2024] POST / => generated 20 bytes in 1 msecs (HTTP/1.1 200) 2 headers in 71 bytes (1 switches on core 10)

==> /var/log/nginx/access.log <==
127.0.0.1 - - [17/Jan/2024:23:28:58 +0100] "POST / HTTP/1.1" 200 20 "-" "Python-xmlrpc/3.9"

==> /var/log/uwsgi.log <==
[pid: 5270|app: 0|req: 4/7] 127.0.0.1 () {38 vars in 471 bytes} [Wed Jan 17 22:28:58 2024] POST / => generated 20 bytes in 7 msecs (HTTP/1.1 200) 2 headers in 71 bytes (1 switches on core 0)
[pid: 5270|app: 0|req: 5/8] 127.0.0.1 () {38 vars in 471 bytes} [Wed Jan 17 22:28:59 2024] POST / => generated 25 bytes in 0 msecs (HTTP/1.1 200) 2 headers in 71 bytes (1 switches on core 10)

==> /var/log/nginx/access.log <==
127.0.0.1 - - [17/Jan/2024:23:28:59 +0100] "POST / HTTP/1.1" 200 25 "-" "Python-xmlrpc/3.9"
127.0.0.1 - - [17/Jan/2024:23:29:14 +0100] "POST / HTTP/1.1" 200 25 "-" "Python-xmlrpc/3.9"

==> /var/log/uwsgi.log <==
[pid: 5270|app: 0|req: 6/9] 127.0.0.1 () {38 vars in 471 bytes} [Wed Jan 17 22:29:14 2024] POST / => generated 25 bytes in 0 msecs (HTTP/1.1 200) 2 headers in 71 bytes (1 switches on core 12)

==> /var/log/nginx/access.log <==
127.0.0.1 - - [17/Jan/2024:23:29:15 +0100] "POST /db/ HTTP/1.1" 200 2050 "-" "Python-xmlrpc/3.9"

==> /var/log/uwsgi.log <==
[pid: 5268|app: 0|req: 2/10] 127.0.0.1 () {38 vars in 477 bytes} [Wed Jan 17 22:29:15 2024] POST /db/ => generated 2050 bytes in 9 msecs (HTTP/1.1 200) 2 headers in 73 bytes (1 switches on core 11)

when I start tryton, i. e. the tryton client says:

$ tryton &
[1] 9312
[pcc@walkabout ~/src/FreeBSD/ports/finance/py-tryton]$ ERROR:tryton.common.common:Traceback (most recent call last):
  File "/usr/local/lib/python3.9/site-packages/tryton/gui/main.py", line 256, in do_activate
    common.get_credentials()
  File "/usr/local/lib/python3.9/site-packages/tryton/common/common.py", line 1032, in get_credentials
    Login()
  File "/usr/local/lib/python3.9/site-packages/tryton/common/common.py", line 1089, in __init__
    func(parameters)
  File "/usr/local/lib/python3.9/site-packages/tryton/rpc.py", line 122, in login
    result = connection.common.db.login(username, parameters, language)
  File "/usr/local/lib/python3.9/xmlrpc/client.py", line 1122, in __call__
    return self.__send(self.__name, args)
  File "/usr/local/lib/python3.9/site-packages/tryton/jsonrpc.py", line 304, in __request
    raise Fault(*response['error'])
tryton.jsonrpc.Fault: 'NoneType' object has no attribute 'put_connection'

Fault: 'NoneType' object has no attribute 'put_connection'

And I just don't friggin' seem to be able to find the bl**dy error, darn!
