# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	tryton-server
PORTVERSION=	7.0.0
CATEGORIES=	finance
MASTER_SITES=	""
DISTFILES=	""

MAINTAINER=	pcc@gmx.net
COMMENT=	Meta-port for your module configuration of the Tryton server
WWW=		https://www.tryton.org/

LICENSE=	BSD4CLAUSE	# For this meta-port only; dependencies have GPLv3

OPTIONS_GROUP=	MAIN BACKEND ACCOUNTING \
		ANALYTIC ATTENDANCE COMMISSION DOCUMENT MARKETING \
		PRODUCTION PROJECT PURCHASE QUALITY SALE SALEPOINT \
		SALESUBSCRIPTION STOCK TIMESHEET \
		BANKING COMPANY CARRIER COUNTRY CURRENCY CUSTOMS \
		DASHBOARD GOOGLEMAPS INCOTERM PARTY PRODUCT \
		ADMINISTRATION WEBSHOP
# Main and local functions if desired (could be served elsewhere, for instance)
#OPTIONS_GROUP_MAIN=	TRYTONDCFG GUNICORN UWSGI PSQLCLIENT DTCLIENT \
#			SCRCLIENT PSQLSRV WEBSRV
OPTIONS_GROUP_MAIN=	DTCLIENT SCRCLIENT PSQLCLIENT PSQLSRV WEBSRV
#OPTIONS_DEFAULT=	TRYTONDCFG UWSGI PSQLCLIENT WEBSRV
OPTIONS_DEFAULT=	SCRCLIENT PSQLCLIENT
MAIN_DESC=		Tryton Frontends and Dependencies
# Let's NOT assume that we always want a trytond server. You then
# could install just the tryton proxy settings on a dedigated nginx
# instance and leave out any module, for instance. Any selected
# tryton module would pull it in via its dependencies. But decide
# whether we want configs from here.
#TRYTONDCFG_DESC=	Install trytond startup and sample configs. Modules pull the server in automatically.
# Production systems allegedly also should have a WSGI server.
# Pick one only. This port below prefers uWSGI if settings conflicted.
# See both below.
#GUNICORN_DESC=		Production WSGI support via gunicorn on this box.
#GUNICORN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}gevent>0:devel/py-gevent@${PY_FLAVOR}
#UWSGI_DESC=		Production WSGI support via uWSGI on this box.
#UWSGI_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}gevent>0:devel/py-gevent@${PY_FLAVOR}
DTCLIENT_DESC=		Desktop application to connect to the server.
DTCLIENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}tryton>=${PORTVERSION}:finance/py-tryton@${PY_FLAVOR}
SCRCLIENT_DESC=		Library to access models, wizards and reports like a client.
SCRCLIENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}
PSQLCLIENT_DESC=	Install Postgres client (otherwise, depend on local sqlite).
PSQLCLIENT_RUN_DEPENDS=	postgresql15-client>0:databases/postgresql15-client
# Radio-like check required: psql client || sqlite # one req'd in any case, sqlite is default if no other is picked, afaik
PSQLSRV_DESC=		Locally add a postgres database on the Tryton server machine.
PSQLSRV_RUN_DEPENDS=	postgresql15-server>0:databases/postgresql15-server
PSQLSRV_IMPLIES=	PSQLCLIENT
WEBSRV_DESC=		Locally add an nginx web server.
WEBSRV_RUN_DEPENDS=	nginx>0:www/nginx
#
.include "Makefile.BACKEND"
#
# There are so many 'operational' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port ensures that it pulls
# in its 'fundamental' module by its port dependencies.
.include "Makefile.ACCOUNTING"
.include "Makefile.ANALYTIC"
.include "Makefile.ATTENDANCE"
.include "Makefile.COMMISSION"
.include "Makefile.DOCUMENT"
.include "Makefile.MARKETING"
.include "Makefile.PRODUCTION"
.include "Makefile.PROJECT"
.include "Makefile.PURCHASE"
.include "Makefile.QUALITY"
.include "Makefile.SALE"
.include "Makefile.SALEPOINT"
.include "Makefile.SALESUBSCRIPTION"
.include "Makefile.STOCK"
.include "Makefile.TIMESHEET"
#
# There are so many 'referential' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port pulls in the 'fundamental'
# module by its port dependencies.
.include "Makefile.BANKING"
.include "Makefile.COMPANY"
.include "Makefile.CARRIER"
.include "Makefile.COUNTRY"
.include "Makefile.CURRENCY"
.include "Makefile.CUSTOMS"
.include "Makefile.DASHBOARD"
.include "Makefile.GOOGLEMAPS"
.include "Makefile.INCOTERM"
.include "Makefile.PARTY"
.include "Makefile.PRODUCT"
#
# There are some modules not grouped as at the Tryton web site.
.include "Makefile.ADMINISTRATION"
.include "Makefile.WEBSHOP"

# metaport supresses fetch.
USES=		python:3.9+ metaport
USE_PYTHON=	flavors
PYTHON_NO_DEPENDS=	YES
USE_RC_SUBR=	trytond trytond-cron trytond-worker
#NO_MTREE=	YES
USERS=		tryton
GROUPS=		tryton www

# ${ETCDIR} uses PORTNAME which does not look like what we want in there.
pre-install:
	@${MKDIR} ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}rc.d
	@${MKDIR} ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.d
	@${MKDIR} ${STAGEDIR}/var/db/trytond/db
PLIST_FILES+=	"@dir ${ETCDIR:S/${PORTNAME}//}rc.d"
PLIST_FILES+=	"@dir ${ETCDIR:S/${PORTNAME}//}trytond.d"
PLIST_FILES+=	"@dir /var/db/trytond/db"
PLIST_FILES+=	"@dir /var/db/trytond"

post-install:
	${INSTALL_SCRIPT} ${FILESDIR}/trytond.conf.in ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.conf.sample
	${INSTALL_SCRIPT} ${FILESDIR}/trytond.rc.defaults.in ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.rc.defaults
	${INSTALL_SCRIPT} ${FILESDIR}/trytond.logconf.in ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.logconf.sample
PLIST_FILES+=	${ETCDIR:S/${PORTNAME}//}trytond.conf.sample
PLIST_FILES+=	${ETCDIR:S/${PORTNAME}//}trytond.rc.defaults
PLIST_FILES+=	${ETCDIR:S/${PORTNAME}//}trytond.logconf.sample

.include <bsd.port.mk>
