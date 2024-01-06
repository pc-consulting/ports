# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-account-stock-shipment-cost-weight
CATEGORIES=	finance python

COMMENT=	Tryton module to allocate shipment cost per weight
WWW=		https://docs.tryton.org/projects/modules-account-stock-shipment-cost-weight/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (account_stock_shipment_cost, ir,
#				stock_shipment_measurements) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-account-stock-shipment-cost=${PORTVERSION}:finance/py-trytond-account-stock-shipment-cost@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-measurements=${PORTVERSION}:finance/py-trytond-stock-shipment-measurements@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
