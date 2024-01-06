# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-sale-subscription-asset
CATEGORIES=	finance python

COMMENT=	Module to handle asset in the sale subscriptions
WWW=		https://docs.tryton.org/projects/modules-sale-subscription-asset/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, sale_subscription. stock_lot)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-subscription=${PORTVERSION}:finance/py-trytond-sale-subscription@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-lot=${PORTVERSION}:finance/py-trytond-stock-lot@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
