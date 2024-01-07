# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-account-stock-anglo-saxon
CATEGORIES=	finance python

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
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-stock>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-product>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-stock-continental>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-stock-continental@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-purchase>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/trytond-purchase@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/trytond-sale@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-drop-shipment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/trytond-sale-supply-drop-shipment@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
