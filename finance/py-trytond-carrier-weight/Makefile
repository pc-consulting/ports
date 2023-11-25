# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-carrier-weight
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to add cost method "on weight" on carrier
WWW=		https://docs.tryton.org/projects/modules-carrier-weight/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (carrier, company, currency, ir
#				product, product_measurements, res;
#				extras:, purchase_shipment_cost,
#				sale_shipment_cost,
#				stock_shipment_cost) # ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company=${PORTVERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-measurements=${PORTVERSION}:finance/py-trytond-product-measurements@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-shipment-cost=${PORTVERSION}:finance/py-trytond-purchase-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR} \
 		${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-stock-shipment-cost@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
