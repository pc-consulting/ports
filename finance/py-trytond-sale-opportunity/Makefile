# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-opportunity
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with leads and opportunities

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-dateutil>0:XXX/py-python-dateutil \
			${PYTHON_PKGNAMEPREFIX}pygal>0:XXX/py-pygal

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
