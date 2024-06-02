# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-carrier-subdivision
CATEGORIES=	finance python

COMMENT=	Tryton module with carriers selection restriction means by subdivision
WWW=		https://docs.tryton.org/projects/modules-carrier-subdivision/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (carrier, ir; extras: carrier_carriage,
#				sale_shipment_cost) # ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-carrier-carriage>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-carrier-carriage@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-shipment-cost>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-shipment-cost@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
