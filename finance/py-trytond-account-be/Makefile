# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-account-be
CATEGORIES=	finance python

COMMENT=	Tryton module with belgian chart of accounts
WWW=		https://docs.tryton.org/projects/modules-account-be/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account, account_eu;
#				extras: account_assist,
#				account_deposit,
#				sale_advance_payment)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-account>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-asset>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-asset@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-eu>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-eu@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-deposit>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-deposit@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-advance-payment>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-advance-payment@${PY_FLAVOR}
# No test dependencies from python package

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
