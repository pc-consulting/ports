# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-currency
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module with currencies
WWW=		https://docs.tryton.org/en/latest/currency.html

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>=0.9:databases/py-python-sql@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pycountry>0:textproc/py-pycountry@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}argcomplete>0:devel/py-argcomplete@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir, res) # ir, res:trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
