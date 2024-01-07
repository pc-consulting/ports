# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-analytic-purchase
CATEGORIES=	finance python

COMMENT=	Tryton module to add analytic accounting on purchase
WWW=		https://docs.tryton.org/projects/modules-analytic-purchase/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (analytic_account, analytic_invoice,
#				purchase)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond-analytic-account=${PORTVERSION}:finance/py-trytond-analytic-account@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-analytic-invoice=${PORTVERSION}:finance/py-trytond-analytic-invoice@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/py-trytond-purchase@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
