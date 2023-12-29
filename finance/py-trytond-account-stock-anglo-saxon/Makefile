# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-stock-anglo-saxon
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module for anglo-saxon real-time stock valuation
WWW=		https://docs.tryton.org/projects/modules-account-stock-anglo-saxon/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account, account_invoice,
#				account_invoice_stock,
#				account_product,
#				account_stock_continental, ir, res)
#				# ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account=${PORTVERSION}:finance/py-trytond-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-stock=${PORTVERSION}:finance/py-trytond-account-invoice-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-product=${PORTVERSION}:finance/py-trytond-account-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-stock-continental=${PORTVERSION}:finance/py-trytond-account-stock-continental@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/trytond-purchase@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/trytond-sale@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-drop-shipment=${PORTVERSION}:finance/trytond-sale-supply-drop-shipment@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils
USERS=		tryton
GROUPS=		tryton www

.include <bsd.port.mk>
