# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock-supply-forecast
CATEGORIES=	finance python

COMMENT=	Tryton module to add forecast to supply computation
WWW=		https://docs.tryton.org/projects/modules-stock-supply-forecast/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, stock_forecast, stock_supply)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-forecast=${PORTVERSION}:finance/py-trytond-stock-forecast@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-supply=${PORTVERSION}:finance/py-trytond-stock-supply@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
