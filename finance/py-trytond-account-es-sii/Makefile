# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-es-sii
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module that sends invoices to the spanish sii webservice
WWW=		https://docs.tryton.org/projects/modules-account-es-sii/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zeep>0:net/py-zeep \
		${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
