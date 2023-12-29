# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-party-relationship
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Party relationship module for tryton
WWW=		https://docs.tryton.org/projects/modules-party-relationship/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>=0.4:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (party)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR}
# No test dependencies from python package

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
