# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-purchase-secondary-unit
CATEGORIES=	finance python

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
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
