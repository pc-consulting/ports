# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-purchase-secondary-unit
PORTVERSION=	7.0.0
CATEGORIES=	finance python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}
# Unfortunately, all Tryton distfiles come named with underscores instead of dashes.
DISTNAME=	${PORTNAME:S/-/_/g}-${DISTVERSIONPREFIX}${DISTVERSION}${DISTVERSIONSUFFIX}
DIST_SUBDIR=	Tryton

MAINTAINER=	pcc@gmx.net
COMMENT=	Tryton module to add a secondary unit on purchase line
WWW=		https://docs.tryton.org/projects/modules-purchase-secondary-unit/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_invoice, ir, product,
#				purchase, stock; extras:
#				account_invoice_secondary_unit,
#				purchase_blanket_agreement,
#				purchase_requisition,
#				stock_secondary_unit) # ir: trytond built-in
#		NOTE incoterm currently deviates in its PORTVERSION, hence relaxed check
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-secondary-unit=${PORTVERSION}:finance/py-trytond-account-invoice-secondary-unit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/py-trytond-purchase@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-blanket-agreement=${PORTVERSION}:finance/py-trytond-purchase-blanket-agreement@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase-requisition=${PORTVERSION}:finance/py-trytond-purchase-requisition@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-secondary-unit=${PORTVERSION}:finance/py-trytond-stock-secondary-unit@${PY_FLAVOR}

USES=		python:3.9+
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
