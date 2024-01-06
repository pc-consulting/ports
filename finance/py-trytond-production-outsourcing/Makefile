# Created by: Peter Cornelius <pcc@gmx.net>

PORTNAME=	trytond-production-outsourcing
CATEGORIES=	finance python

COMMENT=	Tryton module to outsource production
WWW=		https://docs.tryton.org/projects/modules-production-outsourcing/en/latest/

LICENSE=	GPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

# No dependencies from python package
# Dependencies from tryton.cfg (ir, product, production,
#				production_routing, purchase)
#				# ir: trytond built-in
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}trytond=${PORTVERSION}:finance/py-trytond@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-product=${PORTVERSION}:finance/py-trytond-product@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-production=${PORTVERSION}:finance/py-trytond-production@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-production-routing=${PORTVERSION}:finance/py-trytond-production-routing@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}trytond-purchase=${PORTVERSION}:finance/py-trytond-purchase@${PY_FLAVOR}
# Test dependencies from python package
# Don't know yet how to properly test
#TEST_DEPENDS=	${PYTHON_PKGNAMEPREFIX}proteus=${PORTVERSION}:finance/py-proteus@${PY_FLAVOR}

GROUPS=		tryton www

.include "${.CURDIR}/../../finance/tryton-server/Makefile"

.include <bsd.port.mk>
