# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock-shipment-measurements
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to add measurements to shipment
WWW=		https://docs.tryton.org/projects/modules-stock-shipment-measurements/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (company, ir, product,
#				product_measurements, stock; extras:
#				carrier_weight, stock_package) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier-weight=${PORTVERSION}:finance/py-trytond-carrier-weight@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-measurements=${PORTVERSION}:finance/py-trytond-product-measurements@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package=${PORTVERSION}:finance/py-trytond-stock-package@${PY_FLAVOR}
# No further dependencies from python package

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
