# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-carrier-carriage
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to support multiple carrier
WWW=		https://docs.tryton.org/projects/modules-carrier-carriage/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (carrier, ir, stock,
#				stock_shipment_cost; extras:
#				account_invoice, incoterm,
#				purchase_shipment_cost, sale,
#				sale_shipment_cost) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-incoterm=${PORTVERSION}:finance/py-trytond-incoterm@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-shipment-cost=${PORTVERSION}:finance/py-trytond-purchase-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-stock-shipment-cost@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
