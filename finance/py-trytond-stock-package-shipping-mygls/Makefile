# Created by: Peter Cornelius <pcc@gmx.net>
# $FreeBSD$

PORTNAME=	trytond-stock-package-shipping-mygls
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Mygls connector for the tryton application platform

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zeep>0:XXX/py-zeep

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
