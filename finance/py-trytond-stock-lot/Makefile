# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock-lot
CATEGORIES=	finance python

COMMENT=	Tryton module for lot of products

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE
WWW=		https://docs.tryton.org/projects/modules-stock-lot/en/latest/

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>0:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir, product, stock;
#				extras: sale_supply_drop_shipment)
#				ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-supply-drop-shipment=${PORTVERSION}:finance/py-trytond-sale-supply-drop-shipment@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
