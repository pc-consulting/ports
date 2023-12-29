# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-purchase-shipment-cost
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for purchase shipment cost
WWW=		https://docs.tryton.org/projects/modules-purchase-shipment-cost/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (carrier, currency, ir, product, res,
#				stock, stock_shipment_cost;
#				extras: account_invoice_stock,
#				account_product,
#				account_stock_continental,
#				account_stock_anglo_saxon,
#				product_kit) # ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-stock=${PORTVERSION}:finance/py-trytond-account-invoice-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-product=${PORTVERSION}:finance/py-trytond-account-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-stock-anglo-saxon=${PORTVERSION}:finance/py-trytond-account-stock-anglo-saxon@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-stock-continental=${PORTVERSION}:finance/py-trytond-account-stock-continental@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency=${PORTVERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product-kit=${PORTVERSION}:finance/py-trytond-product-kit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-stock-shipment-cost@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/py-trytond-purchase@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
