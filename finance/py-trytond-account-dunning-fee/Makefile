# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-account-dunning-fee
CATEGORIES=	finance python

COMMENT=	Tryton module for account dunning fee
WWW=		https://docs.tryton.org/projects/modules-account-dunning-fee/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_dunning, account_product,
#				ir; extras: account_dunning_letter)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-dunning>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-dunning@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-dunning-letter>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-dunning-letter@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-product>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-account-product@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
