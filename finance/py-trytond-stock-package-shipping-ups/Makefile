# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-stock-package-shipping-ups
PORTVERSION=	7.0.2
CATEGORIES=	finance python

COMMENT=	Ups connector for the tryton application platform
WWW=		https://docs.tryton.org/projects/modules-stock-package-shipping-ups/en/latest

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}requests>0:www/py-requests@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}requests-oauthlib>0:www/py-requests-oauthlib@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}oauthlib>0:security/py-oauthlib@${PY_FLAVOR}
# Dependencies from tryton.cfg (carrier, ir, party, product, res,
#				stock, stock_package,
#				stock_package_shipping,
#				stock_shipment_measurements)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-party>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-party@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-package-shipping>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-package-shipping@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-stock-shipment-measurements>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-stock-shipment-measurements@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
#		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
