# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-production-outsourcing
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to outsource production
WWW=		https://docs.tryton.org/projects/modules-production-outsourcing/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product, production,
#				production_routing, purchase)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-production=${PORTVERSION}:finance/py-trytond-production@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-production-routing=${PORTVERSION}:finance/py-trytond-production-routing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/py-trytond-purchase@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
