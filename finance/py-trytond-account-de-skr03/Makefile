# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-de-skr03
PORTVERSION=	7.0.0
CATEGORIES=	finance python german
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with german chart of accounts skr03
WWW=		https://docs.tryton.org/projects/modules-account-de-skr03/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account) # trytond indirectly via py-trytond-account
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION}:finance/py-trytond-account@${PY_FLAVOR}
# No test dependencies from python package

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
