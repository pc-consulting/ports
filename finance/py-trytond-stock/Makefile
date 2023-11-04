# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock
PORTVERSION=	7.0.0
CATEGORIES=	devel python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for stock and inventory

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}simpleeval>0:XXX/py-simpleeval \
			${PYTHON_PKGNAMEPREFIX}pygal>0:XXX/py-pygal

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
