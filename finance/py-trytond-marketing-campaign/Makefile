# Created by: Peter Cornelius <pcc@gmx.net>

# Versions must be set first.
.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.portversions.mk"

PORTNAME=	trytond-marketing-campaign
CATEGORIES=	finance python

COMMENT=	Tryton module to manage marketing campaign
WWW=		https://docs.tryton.org/projects/modules-marketing-campaign/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# Dependencies from python package
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-sql>0:databases/py-python-sql@${PY_FLAVOR}
# Dependencies from tryton.cfg (ir, marketing; extras: sale,
#				sale_opportunity, sale_point)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-marketing>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-marketing-automation>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-marketing-email>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-opportunity>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-opportunity@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-sale-point>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-sale-point@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-web-shortener>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-trytond-marketing@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus>=${TRYTON_MIN_VERSION}<${TRYTON_MAX_VERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile.defaults.mk"

.include <bsd.port.mk>
