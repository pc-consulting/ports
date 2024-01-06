# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-stock-package-shipping-mygls
CATEGORIES=	finance python

COMMENT=	Mygls connector for the tryton application platform
WWW=		https://docs.tryton.org/projects/modules-stock-package-shipping-mygls/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}zeep>0:net/py-zeep@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}py-pypdf>=3:print/py-pypdf@${PY_FLAVOR}
# Dependencies from tryton.cfg (carrier, ir, stock, stock_package,
#				stock_package_shipping)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier=${PORTVERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock=${PORTVERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package=${PORTVERSION}:finance/py-trytond-stock-package@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping=${PORTVERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale=${PORTVERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost=${PORTVERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
