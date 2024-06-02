# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-sale-subscription
CATEGORIES=	finance python

COMMENT=	Tryton module for subscription
WWW=		https://docs.tryton.org/projects/modules-sale-subscription/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}types-python-dateutil>0:devel/py-types-python-dateutil@${PY_FLAVOR}
# Dependencies from tryton.cfg (account, account_invoice, company,
#				currency, ir, product, res, sale)
#				# ir, res: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-company>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-company@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-currency>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-currency@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
