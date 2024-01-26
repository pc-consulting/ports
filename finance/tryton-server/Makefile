# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/Makefile.defaults.portversions.mk"

PORTNAME=	tryton-server
PORTVERSION=	${TRYTON_DEFAULT_VERSION}
CATEGORIES=	finance
MASTER_SITES=	""
DISTFILES=	""

MAINTAINER=	pcc@gmx.net
COMMENT=	Meta-port for your module configuration of the Tryton server
WWW=		https://www.tryton.org/

LICENSE=	BSD4CLAUSE	# For this meta-port only; dependencies may have other licenses.

OPTIONS_GROUP=	MAIN BACKEND ACCOUNTING \
		ANALYTIC ATTENDANCE COMMISSION DOCUMENT MARKETING \
		PRODUCTION PROJECT PURCHASE QUALITY SALE SALEPOINT \
		SALESUBSCRIPTION STOCK TIMESHEET \
		BANKING COMPANY CARRIER COUNTRY CURRENCY CUSTOMS \
		DASHBOARD GOOGLEMAPS INCOTERM PARTY PRODUCT \
		ADMINISTRATION WEBSHOP
# Main and local functions if desired (could be served elsewhere, for instance)
#OPTIONS_GROUP_MAIN=	TRYTOND GUNICORN UWSGI PSQLCLIENT DTCLIENT \
#			SCRCLIENT PSQLSRV WEBSRV
OPTIONS_GROUP_MAIN=	TRYTOND UWSGI PSQLCLIENT DTCLIENT \
			SCRCLIENT PSQLSRV WEBSRV
OPTIONS_DEFAULT=	TRYTOND UWSGI PSQLCLIENT WEBSRV
#OPTIONS_DEFAULT=	TRYTOND PSQLCLIENT WEBSRV
MAIN_DESC=		Tryton Config, Frontends and Dependencies (Modules pull in trytond automatically)
TRYTOND_DESC=		Install trytond and its startup and sample configs on this box.
# Dependencies called from here would pull in trytond anyways, but
# let's leave the direct dependency in here for the time being.
TRYTOND_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR}
TRYTOND_PLIST_FILES+=	"@dir ${ETCDIR:S/${PORTNAME}//}rc.d"
TRYTOND_PLIST_FILES+=	"@dir ${ETCDIR:S/${PORTNAME}//}trytond.conf.d"
TRYTOND_PLIST_FILES+=	${ETCDIR:S/${PORTNAME}//}trytond.rc.defaults
#TRYTOND_PLIST_FILES+=	"@mode 0640"
TRYTOND_PLIST_FILES+=	"@sample ${ETCDIR:S/${PORTNAME}//}trytond.conf.sample ${ETCDIR:S/${PORTNAME}//}trytond.conf"
TRYTOND_PLIST_FILES+=	"@mode"
TRYTOND_PLIST_FILES+=	"@sample ${ETCDIR:S/${PORTNAME}//}trytond.logconf.sample ${ETCDIR:S/${PORTNAME}//}trytond.logconf"
TRYTOND_SUB_FILES+=	trytond.rc.defaults trytond.conf trytond.logconf
# Production systems allegedly also should have a WSGI server.
# Pick one only. This port should below prefer uWSGI if settings conflicted.
# See both further below.
# Currently only supporting uWSGI
#GUNICORN_PREVENTS=	UWSGI
#GUNICORN_DESC=		Production WSGI support via gunicorn on this box.
#GUNICORN_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}gunicorn>0:www/py-gunicorn@${PY_FLAVOR} \
#			${PYTHON_PKGNAMEPREFIX}gevent>0:devel/py-gevent@${PY_FLAVOR}
#UWSGI_PREVENTS=		GUNICORN
UWSGI_DESC=		Production WSGI support via uWSGI on this box.
UWSGI_RUN_DEPENDS=	uwsgi${PYTHON_PKGNAMESUFFIX}>0:www/uwsgi@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}gevent>0:devel/py-gevent@${PY_FLAVOR}
UWSGI_IMPLIES+=		WEBSRV
UWSGI_PLIST_FILES+=	"@sample ${ETCDIR:S/${PORTNAME}//}trytond.uwsgi.ini.sample ${ETCDIR:S/${PORTNAME}//}trytond.uwsgi.ini"
UWSGI_SUB_FILES+=	trytond.uwsgi.ini
DTCLIENT_DESC=		Tryton desktop application on this box to connect to the server.
DTCLIENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}tryton>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-tryton@${PY_FLAVOR}
SCRCLIENT_DESC=		Proteus library on this box to access models, wizards and reports like a client.
SCRCLIENT_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR}
PSQLCLIENT_DESC=	Install Postgres client on this box (otherwise, depend on local sqlite).
PSQLCLIENT_RUN_DEPENDS=	postgresql15-client>0:databases/postgresql15-client
PSQLCLIENT_PLIST_FILES_OFF+=	"@owner ${TRYTONDOWN}"
PSQLCLIENT_PLIST_FILES_OFF+=	"@group ${TRYTONDGRP}"
#PSQLCLIENT_PLIST_FILES_OFF+=	"@mode 0640"
#PSQLCLIENT_PLIST_FILES_OFF+=	"/var/db/trytond/db/db.sqlite"
PSQLCLIENT_PLIST_FILES_OFF+=	"@mode 0770"
PSQLCLIENT_PLIST_FILES_OFF+=	"@dir /var/db/trytond/db"
PSQLCLIENT_PLIST_FILES_OFF+=	"@dir /var/db/trytond"
PSQLCLIENT_PLIST_FILES_OFF+=	"@owner"
PSQLCLIENT_PLIST_FILES_OFF+=	"@group"
PSQLCLIENT_PLIST_FILES_OFF+=	"@mode"
# Radio-like check required: psql client || sqlite # one req'd in any case, sqlite is default if no other is picked, afaik
PSQLSRV_DESC=		Locally add a postgres database on this box.
PSQLSRV_RUN_DEPENDS=	postgresql15-server>0:databases/postgresql15-server
PSQLSRV_IMPLIES=	PSQLCLIENT
WEBSRV_DESC=		Locally add an nginx web server on this box.
WEBSRV_RUN_DEPENDS=	nginx>0:www/nginx
WEBSRV_PLIST_FILES+=	"@owner ${TRYTONDOWN}"
WEBSRV_PLIST_FILES+=	"@group ${WWWGRP}"
WEBSRV_PLIST_FILES+=	"@mode 0750"
WEBSRV_PLIST_FILES+=	"@dir ${WWWDIR}/tryton-static"
WEBSRV_PLIST_FILES+=	"@owner"
WEBSRV_PLIST_FILES+=	"@group"
WEBSRV_PLIST_FILES+=	"@mode"
WEBSRV_PLIST_FILES+=	"@dir ${ETCDIR:S/${PORTNAME}/nginx/}/nginx.conf.d"
WEBSRV_PLIST_FILES+=	"@sample ${ETCDIR:S/${PORTNAME}/nginx/}/nginx.conf.d/trytond.conf.sample ${ETCDIR:S/${PORTNAME}/nginx/}/nginx.conf.d/trytond.conf"
WEBSRV_SUB_FILES+=	trytond.nginx.conf
#PLIST_SUB+=		STATICWWWDIR=${WWWDIR:S/${PORTNAME}//}tryton-static
#
.include "Makefile.BACKEND.mk"
#
# There are so many 'operational' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port ensures that it pulls
# in its 'fundamental' module by its port dependencies.
.include "Makefile.ACCOUNTING.mk"
.include "Makefile.ANALYTIC.mk"
.include "Makefile.ATTENDANCE.mk"
.include "Makefile.COMMISSION.mk"
.include "Makefile.DOCUMENT.mk"
.include "Makefile.MARKETING.mk"
.include "Makefile.PRODUCTION.mk"
.include "Makefile.PROJECT.mk"
.include "Makefile.PURCHASE.mk"
.include "Makefile.QUALITY.mk"
.include "Makefile.SALE.mk"
.include "Makefile.SALEPOINT.mk"
.include "Makefile.SALESUBSCRIPTION.mk"
.include "Makefile.STOCK.mk"
.include "Makefile.TIMESHEET.mk"
#
# There are so many 'referential' modules that we use a group for
# each of them. In most cases, picking one of the items therein
# means that the corresponding module port pulls in the 'fundamental'
# module by its port dependencies.
.include "Makefile.BANKING.mk"
.include "Makefile.COMPANY.mk"
.include "Makefile.CARRIER.mk"
.include "Makefile.COUNTRY.mk"
.include "Makefile.CURRENCY.mk"
.include "Makefile.CUSTOMS.mk"
.include "Makefile.DASHBOARD.mk"
.include "Makefile.GOOGLEMAPS.mk"
.include "Makefile.INCOTERM.mk"
.include "Makefile.PARTY.mk"
.include "Makefile.PRODUCT.mk"
#
# There are some modules not grouped as at the Tryton web site.
.include "Makefile.ADMINISTRATION.mk"
.include "Makefile.WEBSHOP.mk"

# metaport supresses fetch.
USES=		python:3.9+ metaport
USE_PYTHON=	flavors
PYTHON_NO_DEPENDS=	YES
#NO_MTREE=	YES
NO_WRKSUBDIR=	YES
# Defaults unless overridden later
PSQLCLIENT_ON_COMMENT_MARK=	''
PSQLCLIENT_OFF_COMMENT_MARK=	'\#'
UWSGI_ON_COMMENT_MARK=		''
UWSGI_OFF_COMMENT_MARK=		'\#'
WEBSRV_ON_COMMENT_MARK=		''
WEBSRV_OFF_COMMENT_MARK=	'\#'
SUB_LIST+=	PSQLCLIENT_OFF_COMMENT_MARK=${PSQLCLIENT_OFF_COMMENT_MARK} \
		PSQLCLIENT_ON_COMMENT_MARK=${PSQLCLIENT_ON_COMMENT_MARK} \
		UWSGI_OFF_COMMENT_MARK=${UWSGI_OFF_COMMENT_MARK} \
		UWSGI_ON_COMMENT_MARK=${UWSGI_ON_COMMENT_MARK} \
		WEBSRV_OFF_COMMENT_MARK=${WEBSRV_OFF_COMMENT_MARK}
# Default user and group settings
TRYTONDOWN=	tryton
TRYTONDGRP=	${TRYTONDOWN}
USERS=		${TRYTONDOWN}
GROUPS=		${TRYTONDOWN} ${WWWGRP}

SUB_FILES+=	pkg-message
SUB_LIST+=	PYTHON_CMD=${PYTHON_CMD}

# The defaults Makefile does not work with this port Makefile yet.
#.include "${.CURDIR}/Makefile.defaults.mk"

.include <bsd.port.pre.mk>

#.if ${PORT_OPTIONS:MGUNICORN} && ${PORT_OPTIONS:MUWSGI}
#	${ECHO_MSG} "You should have picked either one of GUNICORN or UWSGI, but not both."
#	${ECHO_MSG} "I decided to select UWSGI for you."
#	.undef GUNICORN ... somehow.
#.endif

.if ${PORT_OPTIONS:MPSQLCLIENT}
PSQLCLIENT_ON_COMMENT_MARK=	'\#'
PSQLCLIENT_OFF_COMMENT_MARK=	''
.endif

.if ${PORT_OPTIONS:MTRYTOND}
# FIXME Run trytond as user tryton?
USE_RC_SUBR=	trytond trytond-cron trytond-worker
.endif

.if ${PORT_OPTIONS:MUWSGI}
UWSGI_ON_COMMENT_MARK=		'\#'
UWSGI_OFF_COMMENT_MARK=		''
.endif
# Ensure write access to file database if called via uWSGI
.if ${PORT_OPTIONS:MUWSGI} && !${PORT_OPTIONS:MPSQLCLIENT}
TRYTONDGRP=	uwsgi
.endif

.if ${PORT_OPTIONS:MWEBSRV}
WEBSRV_ON_COMMENT_MARK=	'\#'
WEBSRV_OFF_COMMENT_MARK=	''
.endif

# ${ETCDIR} uses PORTNAME which does not look like what we want in there.
pre-install-TRYTOND-on:
	@${MKDIR} ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}rc.d
	@${MKDIR} ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.conf.d

# ${ETCDIR} uses PORTNAME which does not look like what we want in there.
post-install-TRYTOND-on:
	${INSTALL_SCRIPT} ${WRKDIR}/trytond.rc.defaults ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.rc.defaults
	${INSTALL_SCRIPT} ${WRKDIR}/trytond.conf ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.conf.sample
	${INSTALL_SCRIPT} ${WRKDIR}/trytond.logconf ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}trytond.logconf.sample

# An empty db.sqlite must be present otherwise the suggested database
# initialization in pkg-message via trytond-admin fails. However db.sqlite is
# not included in PLIST_FILES such as not to lose it when deinstalling.
post-install-PSQLCLIENT-off:
	@${MKDIR} ${STAGEDIR}/var/db/trytond/db
	${INSTALL} -b -C -m 0660 /dev/null ${STAGEDIR}/var/db/trytond/db/db.sqlite

post-install-UWSGI-on:
	${INSTALL_SCRIPT} ${WRKDIR}/trytond.uwsgi.ini ${STAGEDIR}/${ETCDIR:S/${PORTNAME}//}/trytond.uwsgi.ini.sample

pre-install-WEBSRV-on:
	@${MKDIR} ${STAGEDIR}/${ETCDIR:S/${PORTNAME}/nginx/}/nginx.conf.d
	@${MKDIR} ${STAGEDIR}/${WWWDIR}/tryton-static

post-install-WEBSRV-on:
	${INSTALL_SCRIPT} ${WRKDIR}/trytond.nginx.conf ${STAGEDIR}/${ETCDIR:S/${PORTNAME}/nginx/}/nginx.conf.d/trytond.conf.sample

.include <bsd.port.post.mk>
