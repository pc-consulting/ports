# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-product-recommendation-association-rule
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to learn association rule for recommendation
WWW=		https://docs.tryton.org/projects/modules-sale-product-recommendation-association-rule/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}efficient-apriori>0:devel/py-efficient-apriori@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir, product, sale,
#				sale_product_recommendation; extras:
#				sale_point) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-point=${PORTVERSION}:finance/py-trytond-sale-point@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-product-recommendation=${PORTVERSION}:finance/py-trytond-sale-product-recommendation@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
