# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	raspberry-gpio
PORTVERSION=	0.7.0
CATEGORIES=	devel python
#MASTER_SITES=	CHEESESHOP
#MASTER_SITES=	SF
MASTER_SITES=	https://sourceforge.net/projects/${PORTNAME}-python/files/
#MASTER_SITE_SUBDIR= ${PORTNAME}-python/${PORTNAME}-python/${PORTVERSION}
#MASTER_SITE_SUBDIR= ${PORTNAME}-python/files
#DISTFILES=	${PORTNAME}-python-${PORTVERSION}.tar.gz
#DISTFILES=	RPi.GPIO-${PORTVERSION}.tar.gz/download
DISTFILES=	RPi.GPIO-${PORTVERSION}.tar.gz
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	RPi.GPIO - A module to control raspberry pi gpio channels

# LICENSE=	MIT # Ensure this is valid! See ${PORTSDIR}/Mk/bsd.licenses.db.mk.

USES=		python
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
