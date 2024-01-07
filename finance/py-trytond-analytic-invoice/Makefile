# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-analytic-invoice
CATEGORIES=	finance python

COMMENT=	Tryton module to add analytic accounting on invoice
WWW=		https://docs.tryton.org/projects/modules-analytic-invoice/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_invoice, analytic_account;
#				extras: account_asset,
#				account_invoice_defer)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-account-asset=${PORTVERSION}:finance/py-trytond-account-asset@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice=${PORTVERSION}:finance/py-trytond-account-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-invoice-defer=${PORTVERSION}:finance/py-trytond-account-invoice-defer@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-analytic-account=${PORTVERSION}:finance/py-trytond-analytic-account@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
