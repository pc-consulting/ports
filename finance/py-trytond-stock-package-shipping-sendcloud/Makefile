# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock-package-shipping-sendcloud
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Sendcloud connector for the tryton application platform
WWW=		https://docs.tryton.org/projects/modules-stock-package-shipping-sendcloud/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests@${PY_FLAVOR}
# Dependencies from tryton.cfg (carrier, company, ir, party, product,
#				stock, stock_package,
#				stock_package_shipping,
#				stock_shipment_measurements)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party=${PORTVERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package=${PORTVERSION}:finance/py-trytond-stock-package@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping=${PORTVERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-measurements=${PORTVERSION}:finance/py-trytond-stock-shipment-measurements@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
