# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-stock-package-shipping-ups
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Ups connector for the tryton application platform

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>0:XXX/py-requests \
			${PYTHON_PKGNAMEPREFIX}requests-oauthlib>0:XXX/py-requests-oauthlib \
			${PYTHON_PKGNAMEPREFIX}oauthlib>0:XXX/py-oauthlib

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
