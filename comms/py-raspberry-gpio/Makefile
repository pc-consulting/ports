# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	raspberry-gpio
PORTVERSION=	0.7.0
CATEGORIES=	devel python
# Need to figure out how to access a revision from SF.
# SF repo is at/beyond 0.7.1 by now but "release" merely is a tag in the repo.
# And 'release tarball' is a file just floating about somewhere.
# With a yet different name...
# Will try with fbsd_gpio for the time being.
#MASTER_SITES=	PYPI
#MASTER_SITES=	SF
MASTER_SITES=	https://sourceforge.net/projects/${PORTNAME}-python/files/
#MASTER_SITE_SUBDIR= ${PORTNAME}-python/${PORTNAME}-python/${PORTVERSION}
#MASTER_SITE_SUBDIR= ${PORTNAME}-python/files
#DISTFILES=	${PORTNAME}-python-${PORTVERSION}.tar.gz
DISTFILES=	RPi.GPIO-${PORTVERSION}.tar.gz
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	RPi.GPIO - A module to control raspberry pi gpio channels

# LICENSE=	MIT # Ensure this is valid! See ${PORTSDIR}/Mk/bsd.licenses.db.mk.

USES=		python
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
