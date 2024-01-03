#
# Makefile defaults for the Tryton Business Software defaults
#
# To be included after all port-local settings have been made
# _BUT BEFORE_ bsd.port.pre.mk.
# This way, port-local settings override defaults here.

# Do not set PORTVERSION in Tryton ports Makefiles unless really required to do so.
PORTVERSION?=	7.0.0
# Ensure that finance is in CATEGORIES at all times, and always first.
CATEGORIES:=	"finance ${CATEGORIES:S/finance//}"
# MASTER_SITES and PYTHON_PKGNAMEPREFIX usually are the same
MASTER_SITES?=	CHEESESHOP
PKGNAMEPREFIX?=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME?=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
# Neatly tuck away all distfiles in a subdirectory.
DIST_SUBDIR?=	Tryton

# Default MAINTAINER -- But please do not hesitate to set to your
# address in "your" port Makefile
MAINTAINER?=	pcc@gmx.net

# Default LICENSE -- BEWARE THAT YOU _MUST_ CORRECTLY SET THIS
# IN THE PORT MAKEFILE IF NOT APPLICABLE TO YOUR PORT !!!
LICENSE?=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Default USE* (which is why we must include this file _before_ bsd.port.pre.mk)
USES=		python:3.9+
USE_PYTHON=	autoplist distutils

# Default user and group settings
TRYTONDOWN?=	tryton
TRYTONDGRP?=	${TRYTONDOWN}
USERS?=		${TRYTONDOWN}
GROUPS?=	${TRYTONDOWN} ${WWWGRP}
#
